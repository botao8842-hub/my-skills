---
name: openclaw-node-windows
description: 在Windows电脑上安装OpenClaw节点，让AI能远程操作电脑。包括Node.js安装、OpenClaw安装、配对连接。
---

# OpenClaw Windows 节点安装指南

让 AI（我）能远程操作你的 Windows 电脑。

## 功能

安装后我可以：
- 📸 截取屏幕截图
- 📂 浏览/管理文件
- �执行 Windows 命令
- 🎥 录制屏幕
- 📷 调用摄像头

---

## 安装步骤

### 第一步：安装 Node.js

**方法1：官网下载（推荐）**

1. 打开 https://nodejs.org
2. 下载 **LTS** 版本（左侧大按钮）
3. 运行安装包，全部点「下一步」默认安装

**方法2：PowerShell 安装**

以管理员身份打开 PowerShell，运行：

```powershell
winget install OpenJS.NodeJS.LTS
```

**验证安装：**

打开 CMD 或 PowerShell，输入：

```
node -v
```

看到 `v22.x.x` 或更高版本就成功了。

---

### 第二步：安装 OpenClaw

以管理员身份打开 **PowerShell**，运行：

```powershell
npm install -g openclaw
```

**验证安装：**

```
openclaw --version
```

看到版本号就成功了。

---

### 第三步：启动节点

在 PowerShell 中运行：

```powershell
openclaw nodes
```

会显示类似：

```
🔗 Pairing code: ABC123
📱 Scan to pair: https://openclaw.ai/pair/xxx
```

---

### 第四步：配对连接

1. 把上面的 **Pairing code**（如 `ABC123`）告诉我
2. 我在 Gateway 这边批准
3. 连上后你就 OK 了！

---

## 常见问题

### Q: npm 命令找不到

**解决方法：**
- 重启 PowerShell/CMD
- 或者手动添加 PATH

### Q: 安装失败，权限错误

**解决方法：**
- 用「管理员身份」运行 PowerShell
- 或者运行：`npm config set prefix "C:\Users\你的用户名\AppData\Roaming\npm"`

### Q: 配对不上

**解决方法：**
- 确保 WSL2 里的 Gateway 在运行
- 检查网络能连通

---

## 配对后的用途

| 功能 | 说明 |
|------|------|
| 截图 | 我能截你Windows屏幕 |
| 文件 | 我能帮你管理文件 |
| 执行 | 我能运行Windows命令 |
| 摄像头 | 能调用摄像头 |

---

## 相关命令

```powershell
openclaw nodes          # 启动节点/查看状态
openclaw nodes status   # 查看连接状态
openclaw nodes remove   # 移除配对
```

---

## 下一步

安装完成后告诉我配对码，我来批准！
