var path = require('path'),
    config;

config = {
    production: {
        url: process.env.GHOST_URL,
        forceAdminSSL: process.env.GHOST_FORCE_ADMIN_SSL,
        mail: {
          transport: 'SES',
          options: {
            AWSAccessKeyID: process.env.AWS_ACCESS_KEY,
            AWSSecretKey: process.env.AWS_SECRET_KEY
          }
        },
        database: {
            client: 'sqlite3',
            connection: {
                filename: '/ghost/content/ghost.db'
            },
            debug: false
        },
        server: {
            host: '0.0.0.0',
            port: '2368'
        }
    }
};

// Export config
module.exports = config;
