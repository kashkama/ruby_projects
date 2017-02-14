class Triangle
  # initialize what properties to use

  define_method (:initialize) do |s1, s2, s3|
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  # check for sides to know which triangle it is
  
  define_method (:triangle) do
    if @s1 == @s2 && @s1 == @s3
      return "equilateral"
    elsif @s1 == @s2 || @s2 == @s3 || @s3 == @s1
      return "isosceles"
    else
      return "scalene"
    end
  end

end
