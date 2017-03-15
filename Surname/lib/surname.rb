class String
  define_method(:name)  do
    name  = []
    input = self.split()
    input.each()  do |word|
      capitalized = word.capitalize!()
      name.push(capitalized)
    end
    if name.length()  == 2
      first = name[0]
      new_first = first.gsub! first , (first[0]+"."+" ")
      return name.join("")
    end
  end
end
