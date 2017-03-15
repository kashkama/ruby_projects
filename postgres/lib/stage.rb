class Stage
  define_method(:initialize)  do |attributes|
    @name = attributes.fetch(:name)
    @loacation  = attributes.fetch(:location)
    @capacity = attributes.fetch(:capacity)
    @Artist  = [ ]
  end
end
