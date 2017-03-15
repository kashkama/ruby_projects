require('sinatra')
  require('sinatra/reloader')
  also_reload('lib/**/*.rb')
  require('./lib/contact')

  get('/')  do
    erb(:index)
  end

  get('/people')  do
    @people = Contact.all()
    erb(:people)
  end

  get('/form/new')  do
    erb(:form)
  end

  post('/people') do
    first_name  = params.fetch("first_name")
    last_name = params.fetch("last_name")
    job_title = params.fetch("job_title")
    company = params.fetch("company")
    address = params.fetch("address")
    phone_number  = params.fetch("phone_number")
    contact = Contact.new(first_name,last_name,job_title,company,address,phone_number)
    contact.save()
    erb(:success)
  end

  get('/people/:id') do
  @person = Contact.find(params.fetch("id"))
  erb(:person)
  end
