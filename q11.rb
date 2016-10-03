# 11. BONUS: Rewrite the method `titleize` in question #7 without mutating any variable.
#
module HelperMethods
  def titleize(str)
  words_no_cap = ["in", "the", "of", "and", "or", "from"]
    phrase = str.split(" ").map {|word|
        if words_no_cap.include?(word)
            word
        else
            word.capitalize
        end
    }.join(" ")
  p phrase
  p str
  end
end
