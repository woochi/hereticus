path = require('path')
rootPath = path.normalize(__dirname + '/..')
env = process.env.NODE_ENV || 'development'

config =
  development:
    root: rootPath,
    app:
      name: 'hereticus'
    db:
      host: "localhost"
      port: 27017
    port: 5920

  test:
    root: rootPath
    app:
      name: 'hereticus'
    port: 27017

  production:
    root: rootPath
    app:
      name: 'hereticus'
    port: 27017

module.exports = config[env]
