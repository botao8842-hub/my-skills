#!/bin/bash
# 股票分析脚本 v2

STOCK=$1
if [ -z "$STOCK" ]; then
    echo "请输入股票代码，如：300750"
    exit 1
fi

# 简单的代码转换
case $STOCK in
    300750|宁德时代) CODE="0.300750" ;;
    600519|茅台) CODE="1.600519" ;;
    000001) CODE="1.000001" ;;
    688256|寒武纪) CODE="0.688256" ;;
    002371|北方华创) CODE="0.002371" ;;
    000858) CODE="1.000858" ;;
    600036) CODE="1.600036" ;;
    002594) CODE="1.002594" ;;
    600900) CODE="1.600900" ;;
    *)
        FIRST=$(echo $STOCK | cut -c1)
        if [ "$FIRST" = "6" ]; then CODE="1.$STOCK"; else CODE="0.$STOCK"; fi
        ;;
esac

# 获取数据
DATA=$(curl -s "https://push2.eastmoney.com/api/qt/stock/get?secid=$CODE&fields=f43,f44,f45,f46,f47,f48,f57,f58,f170,f169" 2>/dev/null)

# 提取数据
CURRENT=$(echo "$DATA" | grep -oP '"f43":\K[0-9]+' | head -1)
HIGH=$(echo "$DATA" | grep -oP '"f44":\K[0-9]+' | head -1)
LOW=$(echo "$DATA" | grep -oP '"f45":\K[0-9]+' | head -1)
CHANGE=$(echo "$DATA" | grep -oP '"f170":\K[0-9-]+' | head -1)
CHANGEPCT=$(echo "$DATA" | grep -oP '"f169":\K[0-9-]+' | head -1)
VOLUME=$(echo "$DATA" | grep -oP '"f47":\K[0-9]+' | head -1)
AMOUNT=$(echo "$DATA" | grep -oP '"f48":\K[0-9]+' | head -1)
NAME=$(echo "$DATA" | grep -oP '"f58":"\K[^"]+' | head -1)

# 转换
CURRENT=$((CURRENT/100))
HIGH=$((HIGH/100))
LOW=$((LOW/100))
CHANGE=$((CHANGE/100))
CHANGEPCT=$((CHANGEPCT/100))
VOLUME=$((VOLUME/10000))
AMOUNT=$((AMOUNT/100000000))

echo "📊 $NAME ($STOCK)"
echo ""
echo "【实时行情】"
echo "当前价：$CURRENT 元"
echo "涨跌幅：$CHANGEPCT%"
echo "涨跌额：$CHANGE 元"
echo "最高：$HIGH 元"
echo "最低：$LOW 元"
echo "成交量：$VOLUME 万手"
echo "成交额：$AMOUNT 亿"

echo ""
echo "【技术分析】"
if [ $CHANGEPCT -gt 2 ]; then
    echo "短期趋势：🔥 强势上涨"
    SUGGEST="可以考虑轻仓买入"
elif [ $CHANGEPCT -lt -2 ]; then
    echo "短期趋势：📉 明显下跌"
    SUGGEST="建议观望或止盈"
else
    echo "短期趋势：➡️ 震荡整理"
    SUGGEST="等待方向明确"
fi

SUPPORT=$((LOW*98/100))
RESIST=$((HIGH*102/100))
echo "支撑位：$SUPPORT 元"
echo "压力位：$RESIST 元"

STOPLOSS=$((CURRENT*95/100))
TAKEPROFIT=$((CURRENT*110/100))

echo ""
echo "【参考建议】"
echo "建议：$SUGGEST"
echo "止损位：$STOPLOSS 元 (-5%)"
echo "止盈位：$TAKEPROFIT 元 (+10%)"

echo ""
echo "⚠️ 免责声明：仅供参考，不构成投资建议"
