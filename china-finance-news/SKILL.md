# China Finance News Skill

获取国内财经新闻、股市行情。

## Tools

- `web_fetch`: 获取财经网站内容

## Actions

### stock_news

获取A股/股市新闻。

Parameters:
- `type`: 新闻类型 (可选)
  - `a股` - A股新闻
  - `港股` - 港股新闻
  - `基金` - 基金新闻
  - `宏观` - 宏观经济

Examples:
- "A股今日行情" - 获取A股相关新闻
- "港股动态" - 获取港股新闻

### markets

获取今日市场行情。

Examples:
- "大盘走势" - 获取上证/深证行情
- "今日收盘" - 获取收盘数据

## Finance Sources

- 东方财富: https://finance.eastmoney.com/
- 雪球: https://xueqiu.com/
- 新浪财经: https://finance.sina.com.cn/
- 同花顺: https://www.10jqka.com.cn/
- 凤凰网财经: https://finance.ifeng.com/

## Note

由于财经网站有反爬虫保护，建议:
1. 直接发新闻链接给我，我帮你读取
2. 或者配置 Brave Search API Key 后使用搜索功能
