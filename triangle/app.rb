require("sinatra")
  require("sinatra/reloader")
  also_reload("lib/**/*.rb")
  require("./lib/triangle.rb")

  get("/")  do
    erb(:index)
  end

  get("/triangle")  do
    @s1 = params.fetch('s1').to_i()
    @s2 = params.fetch('s2').to_i()
    @s3 = params.fetch('s3').to_i()
    @triangle = Triangle.new(@s1,@s2,@s3).triangle()
    erb(:triangle)
  end
