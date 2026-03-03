---
name: ai-animation
description: AI视频动画生成与数字人制作。用于用户想做AI动画、AI短片、数字人、口型同步、视频剪辑等问题。包括免费/低成本工具推荐、提示词技巧、质量检测。
---

# AI动画制作技能

帮助用户使用AI工具生成视频动画，数字人制作，口型同步，视频质量检测。

## 核心功能

1. AI视频生成
2. 数字人/虚拟人制作
3. 口型同步 (Lip Sync)
4. 表情控制
5. 视频质量检测
6. 剪辑后期

---

## 一、免费/低成本工具 (500元预算)

### AI视频生成

| 工具 | 免费额度 | 付费 | 特点 |
|------|----------|------|------|
| **快手可灵** | 每日免费 | ¥15/月 | 国产，中文提示词 |
| **Runway** | 125 credits | $12/月 | 电影质感 |
| **Pika** | 150 credits | $8/月 | 快速简单 |
| **Luma** | 免费试用 | $30/月 | 写实风 |

### 数字人 (免费)

| 工具 | 免费额度 | 备注 |
|------|----------|------|
| **Sad Talker** | 完全免费 | 开源，需GPU |
| **Live2D** | 免费 | Vtuber风格 |
| **D-ID** | 14天试用 | 首月约$5 |

### 口型同步 (免费)

| 工具 | 免费 | 说明 |
|------|------|------|
| **Wav2Lip** | 免费 | 开源，口型同步神器 |
| **Roop** | 免费 | 换脸 |
| **Easy-Wav2Lip** | 免费 | 简单版 |

### 配音 (免费额度)

- **Azure TTS** - 免费额度
- **ElevenLabs** - 免费版够用
- **剪映** - 免费AI配音

### 剪辑 (免费)

- **剪映** - 免费，够用
- **DaVinci Resolve** - 免费版

---

## 二、制作流程

### 短视频 (1-3分钟)

1. **脚本** → 自己写
2. **分镜** → Midjourney 生成参考图
3. **数字人** → 可灵/D-ID 生成
4. **配音** → ElevenLabs + Wav2Lip 对口型
5. **背景** → 可灵生成场景
6. **剪辑** → 剪映

### 品牌广告 (15-60秒)

1. **概念** → Midjourney 制作 Pre-viz
2. **拍摄** → 绿幕 + 演员
3. **换脸** → HeyGen/D-ID
4. **特效** → Runway + 传统特效
5. **调色** → DaVinci Resolve

---

## 三、提示词技巧

### 基础结构

```
[主体] + [动作] + [场景] + [风格] + [运镜] + [光线]
```

### 例子

```
A futuristic robot walking through neon city, cinematic lighting, slow motion, cyberpunk style, 4k
中文：一个未来感机器人在霓虹城市中行走，电影感灯光，慢动作
```

### 关键词

- **风格**: cyberpunk, anime, 3d Pixar, watercolor, oil painting
- **运镜**: slow motion, pan left, zoom in, aerial shot
- **光线**: cinematic lighting, sunset, neon, backlight

---

## 四、口型同步

### Wav2Lip 使用

```bash
# 基本命令
python inference.py --face face.mp4 --audio audio.wav
```

### 提示词关键词

- `lip sync`
- `talking head`
- `speaking`

### 常见问题

- 嘴型不对 → 检查音画同步
- 牙齿模糊 → 用高清原图

---

## 五、视频质量检测

### 检测指标

| 指标 | 检测内容 | 合格线 |
|------|----------|--------|
| 分辨率 | 1920x1080+ | 1080p |
| 帧率 | 24-60fps | 30fps |
| 清晰度 | 无模糊、噪点 | 主观判断 |
| 流畅度 | 无卡顿 | 均匀 |
| 口型匹配 | 嘴型vs音频 | 同步 |
| 表情自然 | 无僵硬/闪烁 | 主观 |

### 免费检测工具

- **Waifu2x** - 提升清晰度
- **RIFE** - 补帧流畅
- **FFmpeg** - 检查视频信息

---

## 六、低成本方案搭配

### ¥0 起步 (纯免费)

- 可灵 (免费) + 剪映 (免费) + Wav2Lip (免费)

### ¥50/月

- Midjourney ($10) + 可灵 ($15) + 剪映 + Wav2Lip

### ¥100/月

- Midjourney + Runway ($12) + ElevenLabs + 剪映

---

## 七、参考资源

- [references/tools.md](references/tools.md) - 工具详细对比
- [references/prompts.md](references/prompts.md) - 提示词模板
- [references/lip-sync.md](references/lip-sync.md) - 口型同步教程
