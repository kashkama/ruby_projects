class Artist
  define_method(:initialize)  do |attributes|
    @name = attributes.fetch(:name)
    @members  = attributes.fetch(:members)
    @genre  = attributes.fetch(:genre)
  end
end
