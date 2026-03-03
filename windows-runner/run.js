const { exec } = require('child_process');

exec('run.ahk', { cwd: '/root/.openclaw/workspace/skills/windows-runner' }, (err, stdout, stderr) => {
  if (err) {
    console.error('Error:', err.message);
    process.exit(1);
  }
  console.log('Done!');
});
