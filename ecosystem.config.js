module.exports = {
  apps: [
    {
      script: "index.js",
      watch: ".",
    },
    {
      script: "sudo npm start",
      watch: ["./service-worker"],
    },
  ],

  deploy: {
    production: {
      user: "postgres",
      host: "SSH_HOSTMACHINE",
      ref: "origin/master",
      repo: "GIT_REPOSITORY",
      path: "DESTINATION_PATH",
      "pre-deploy-local": "",
      "post-deploy":
        "npm install && pm2 reload ecosystem.config.js --env production",
      "pre-setup": "",
    },
  },
};
