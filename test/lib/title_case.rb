class String
  define_method(:title_case) do
    split_sentence = self.split()
binding.pry
    split_sentence.each() do |word|
      word.capitalize()
    end
    split_sentence.join(" ")
  end
end
