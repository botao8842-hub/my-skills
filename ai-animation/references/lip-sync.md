# 口型同步 (Lip Sync) 教程

## 一、什么是口型同步

让视频中的人物嘴巴动作与音频/语音匹配，看起来像在说话。

## 二、免费工具推荐

### Wav2Lip (最推荐)

**官网**: github.com/linjiashen/Wav2Lip

**优点**:
- 完全免费
- 效果最好
- 支持多人

**缺点**:
- 需要本地GPU
- 需要配置环境

**使用方法**:

1. 克隆项目
```bash
git clone https://github.com/linjiashen/Wav2Lip.git
cd Wav2Lip
```

2. 安装依赖
```bash
pip install -r requirements.txt
```

3. 运行推理
```bash
python inference.py --face input_video.mp4 --audio input_audio.wav --outfile output.mp4
```

**参数说明**:
- `--face`: 输入视频/图片
- `--audio`: 输入音频
- `--outfile`: 输出文件

### Wav2Lip-GAN (效果更好)

```bash
python inference.py --face input.mp4 --audio audio.wav --outfile output.mp4 --static
```

添加 `--static` 参数效果更稳定。

### Roop (换脸+口型)

**官网**: github.com/s0md3v/Roop

可以同时换脸+口型同步。

---

## 三、在线工具 (无需配置)

### D-ID

1. 打开 d-id.com
2. 上传照片
3. 上传音频或输入文字
4. 生成视频

**免费额度**: 14天试用

### HeyGen

1. 打开 heygen.com
2. 选择 Photo Talking
3. 上传照片和音频
4. 生成

**价格**: $29/月

### Rask.ai

1. 打开 rask.ai
2. 上传视频
3. 选择翻译语言
4. 自动对口型

**支持**: 100+语言

---

## 四、制作流程

### 步骤1: 准备素材

1. **照片/视频**: 高清正脸照或视频
2. **音频**: 清晰无杂音的语音

### 步骤2: 处理音频

- 用 Audacity 降噪
- 裁剪多余部分
- 保持音量适中

### 步骤3: 生成口型

- 用 Wav2Lip 处理
- 或者用在线工具

### 步骤4: 检查调整

- 观看效果
- 如有问题，尝试其他参数

---

## 五、常见问题

### Q: 嘴巴位置不对

**解决方法**:
- 确保照片是正脸
- 尝试调整嘴型模型

### Q: 牙齿模糊

**解决方法**:
- 使用高清原图
- 避免侧脸

### Q: 动作不自然

**解决方法**:
- 减少头部动作
- 保持视频稳定

### Q: 不同步

**解决方法**:
- 检查音画时间对齐
- 调整音频延迟

---

## 六、进阶技巧

### 提升质量

1. **多次生成**: 生成多个选最好的
2. **混合工具**: Wav2Lip + 手动调整
3. **后期配音**: 用专业配音

### 批量处理

```bash
# 批量处理
for video in *.mp4; do
    python inference.py --face "$video" --audio "audio.wav" --outfile "output_$video"
done
```

### 表情控制

- 用 LivePortrait 可以控制表情
- 包括眼神、点头、微笑等

---

## 七、工作流示例

### 短视频工作流

1. **写脚本** → 自己写
2. **配音** → ElevenLabs / Azure TTS
3. **对口型** → Wav2Lip / HeyGen
4. **剪辑** → 剪映

### 多语言工作流

1. **原视频** → 拍好
2. **翻译** → DeepL 翻译脚本
3. **配音** → ElevenLabs (多语言)
4. **对口型** → Rask.ai / HeyGen
5. **剪辑** → 剪映

---

## 八、免费额度总结

| 工具 | 免费额度 | 适合 |
|------|----------|------|
| Wav2Lip | 无限 | 有GPU |
| D-ID | 14天试用 | 快速出片 |
| HeyGen | 试用 | 商用 |
| Rask | 免费试用 | 翻译 |
| ElevenLabs | 10000字符/月 | 配音 |
