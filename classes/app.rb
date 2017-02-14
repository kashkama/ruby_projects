require('sinatra')
  require('sinatra/reloader')
  require('./lib/rectangle')
  also_reload('lib/**/*.rb')

  get('/') do
    erb(:index)
  end

  get('/square') do
    # @length.length()
    # @width.width()
    erb(:square)
  end
