var path = require('path'),
    config;

config = {
    production: {
        url: process.env.GHOST_URL,
        mail: {},
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
