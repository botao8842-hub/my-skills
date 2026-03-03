#!/bin/bash
# Finance News Fetcher

QUERY="${1:-finance}"
COUNTRY="${2:-US}"

echo "📈 搜索财经新闻: $QUERY"
echo ""

# 使用 web_search 搜索新闻
npx -y openclaw --task "搜索最新的 ${QUERY} 财经新闻，显示前5条标题和摘要"
