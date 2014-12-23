var path = require('path'),
    config;

config = {
    production: {
        url: process.env.GHOST_URL,
        forceAdminSSL: process.env.GHOST_FORCE_ADMIN_SSL,
        mail: {
          transport: 'SMTP',
          host: 'smtp.mandrillapp.com',
          options: {
            service: 'Mandrill',
            auth: {
              user: process.env.MANDRILL_USER,
              pass: process.env.MANDRILL_PASS
            }
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
