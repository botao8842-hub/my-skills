# China News Skill

获取国内新闻资讯。

## Tools

- `web_fetch`: 获取新闻网站内容

## Actions

### guonei

获取国内新闻。

Parameters:
- `category`: 新闻分类 (可选)
  - `guonei` - 国内新闻
  - guojia - 国际新闻
  -财经 - 财经新闻
  -科技 - 科技新闻
  -体育 - 体育新闻
  -娱乐` - 娱乐新闻

Examples:
- "国内新闻" - 获取国内要闻
- "科技新闻" - 获取科技资讯

## News Sources

- 百度新闻: https://news.baidu.com/
- 新浪新闻: https://news.sina.com.cn/
- 腾讯新闻: https://news.qq.com/
- 网易新闻: https://news.163.com/
- 今日头条: https://www.toutiao.com/

## Note

由于大部分新闻网站有反爬虫保护，建议:
1. 手动打开新闻网站截图给我看
2. 或者配置 Brave Search API Key 后使用搜索功能
