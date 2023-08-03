const { environment } = require('@rails/webpacker')

// Example for a single entry point (main.js)
environment.entry.set('main', './app/javascript/main.js')

module.exports = environment
