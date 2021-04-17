const { environment } = require('@rails/webpacker')
environment.plugins.append('Provide', new webpack.ProviderPlugin({
    $: 'jquery',
    jQuery: 'jquery',
    Popper: ['popper.js', 'default']
}))
module.exports = environment
