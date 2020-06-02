exports.handler = async event => {
    const { spawnSync } = require('child_process');
    const unzip = spawnSync('unzip', ['-h']);
    console.log(`stderr: ${unzip.stderr}`);
    console.log(`stdout: ${unzip.stdout}`);
};
