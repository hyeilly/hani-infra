module.exports = {
  apps: [{
    name: $PRJECT_NAME,
    interpreter: "/bin/bash",
    script: "yarn",
    args: "start",
    cwd: $PROJECT_PATH,
    env: {
      PORT: $PORT,
    }
  }]
}
