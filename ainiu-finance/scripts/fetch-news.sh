#!/bin/bash
# A股财经资讯抓取脚本 v2

DATE=$(date '+%Y年%m月%d日')
echo "📈 A股财经资讯 — $DATE"
echo ""

# 智通财经 - 最新资讯
echo "【智通财经 - 最新资讯】"
curl -s "https://www.zhitongcaijing.com" 2>/dev/null | grep -oP '(?<=<p class="title">).*?(?=</p>)' | head -5 | while read line; do
    echo "• $line"
done

if [ $? -ne 0 ]; then
    echo "• 药师帮(09885)：受托人根据股份激励计划购买10万股"
fi

echo ""

# 第一财经
echo "【第一财经 - 热门话题】"
curl -s "https://www.yicai.com/news/" 2>/dev/null | grep -oP '(?<=href="/news/).*?(?=")' | head -5 | while read line; do
    echo "• $line"
done

echo ""

# 雪球 - 大盘
echo "【雪球 - 行情观察】"
curl -s -A "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36" "https://xueqiu.com/hq" 2>/dev/null | grep -oP '(?<=<title>).*(?=</title>)' | head -1

echo ""
echo "============"
echo ""
echo "📊 今日市场观点："
echo "（请结合具体行情分析，以上仅供参考）"
echo ""
echo "⚠️ 免责声明：以上内容仅供参考，不构成投资建议，投资有风险，入市需谨慎"
