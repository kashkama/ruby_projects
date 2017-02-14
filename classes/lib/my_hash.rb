class MyHash
  # try nesting method in a method
  define_method(:myFetch) do

    define_method(:initialize)  do   |property,value|
      @dict = Hash.new()
      @property = property
      @value  = value
    end
    # i have nested myStore in myFetch method


    define_method(:myStore) do
      @dict.store(@property,@value)
      @dict.fetch(@property)

    end

  end
end
