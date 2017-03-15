class MyHash
  # try nesting method in a method
  @@dict = Hash.new()

  define_method(:initialize)  do   |property,value|
    @property = property
    @value  = value
  end
  # i have nested myStore in myFetch method

  define_method(:myStore) do
    @@dict.store(@property,@value)
  end
  define_method(:myFetch) do
    @@dict.fetch(@property)
  end
end
