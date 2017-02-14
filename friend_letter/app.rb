require('sinatra')
require('sinatra/reloader')

  get('/') do
    @friend = "Jessica"
    erb(:letter)
  end

  get('/greeting_form') do
   erb(:form)
 end

  get('/greeting_card') do
    @sender = params.fetch('sender')
    @recipient  = params.fetch('recipienta')
    erb(:greeting_card)
  end

  get("/australia")  do
    @sender = "Jane"
    @recipient  = "Jessica"
    erb(:australia)
  end

  get("/favourite_photos") do
    erb(:favourite_photos)
  end
