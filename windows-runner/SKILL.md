# Windows程序运行器

通过浏览器或AutoHotkey操作Windows电脑，运行任意程序。

## 方案1：浏览器 + 手动运行

1. 连接Chrome扩展（Badge变绿）
2. 打开浏览器访问目标程序
3. 或者告诉我路径，你手动打开

## 方案2：AutoHotkey运行程序

在你的Windows上：

1. 创建 `run.ahk`：
```autohotkey
Run, %1%
```

2. 创建 `run.js`：
```javascript
const { exec } = require('child_process');
const program = process.argv[2];
exec(`run.ahk "${program}"`, { cwd: 'D:\\OPENCLAW' }, (err) => {
  if (err) console.error('Error:', err);
  else console.log('Started:', program);
});
```

3. 运行：
```powershell
cd D:\OPENCLAW
node run.js "D:\Veee.exe"
```

## 方案3：OpenClaw Node（推荐）

在Windows上安装OpenClaw node后，可以直接用nodes工具运行程序。

## 当前已复制的程序

- `~/Veee.exe` (86MB)
