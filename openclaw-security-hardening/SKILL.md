---
name: openclaw-security-hardening
description: OpenClaw安全加固。防止公网暴露、凭证泄露、未授权访问等安全风险。
---

# 🛡️ OpenClaw安全加固

## 描述

保护OpenClaw部署免受公网暴露、凭证泄露、未授权访问等安全威胁。

## ⚠️ 风险场景

| 风险 | 后果 | 严重程度 |
|------|------|----------|
| 公网暴露 | 任何人可访问 | 🔴 严重 |
| 无认证 | 免密使用你的AI | 🔴 严重 |
| 凭证泄露 | API Key被窃取 | 🔴 严重 |
| 端口开放 | 被黑客攻击 | 🟠 高 |

## 检查清单

### 1. 检查绑定地址
```bash
cat ~/.openclaw/openclaw.json | grep bind
```
✅ 正确: `"bind": "loopback"` 或 `"127.0.0.1"`
❌ 错误: `"bind": "0.0.0.0"` 或不设置

### 2. 检查认证
```bash
cat ~/.openclaw/openclaw.json | grep auth
```
✅ 正确: 有auth配置且开启

### 3. 检查端口暴露
```bash
netstat -tlnp | grep 187
```
✅ 只监听127.0.0.1
❌ 监听0.0.0.0

### 4. 检查凭证存储
```bash
ls -la ~/.openclaw/credentials/
```
✅ 凭证在credentials目录
❌ 凭证在配置文件

## 加固步骤

### 步骤1：确保只监听本地

```json
"gateway": {
  "bind": "127.0.0.1",  // 或 "loopback"
  "port": 18790,
  "auth": {
    "mode": "token",
    "token": "你的token"
  }
}
```

### 步骤2：使用Token认证

```json
"auth": {
  "mode": "token",
  "token": "生成一个强token"
}
```

### 步骤3：生成强Token

```bash
openssl rand -hex 32
```

### 步骤4：禁止公网访问

- 不要用 0.0.0.0
- 只用 127.0.0.1 或 loopback
- 如需远程访问，用VPN/SSH隧道

### 步骤5：凭证分离

- 敏感凭证放credentials/
- 不要放openclaw.json

## 验证命令

### 检查当前配置
```bash
openclaw status
```

### 检查监听端口
```bash
ss -tlnp | grep 18790
```

### 测试本地访问
```bash
curl http://127.0.0.1:18790/
```

### 测试外网访问（应该失败）
```bash
curl http://你的公网IP:18790/
```

## 紧急修复

### 如果已经暴露公网

1. 立即关闭服务
2. 修改Token
3. 检查凭证是否泄露
4. 重新配置为本地模式
5. 验证修复

### 如果发现凭证泄露

1. 立即更换API Key
2. 检查访问日志
3. 确认是否有异常使用
4. 启用更严格的认证

## 监控建议

### 定期检查

- 每天检查配置
- 每周检查日志
- 每月检查更新

### 告警设置

- 监控非本地访问尝试
- 监控异常API调用
- 监控凭证使用

## 相关工具

- ClawSec套件
- soul-guardian - 文件完整性
- audit - 安全审计

## 更多信息

参考新闻：超22万OpenClaw暴露公网事件

