# Create a Ruby class called Article inside a module called Blog that has two attributes: title and body. Write another class called Snippet that inherits from the Article class. The Snippet method should return the same `title` but if you call `body` on a snippet object it should return the body truncated to a 100 characters with three dots at the end. This means if you create a snippet instance and give it a body that has 200 characters, if you call the `body` method it should return the first 100 characters of that body and three dots at the end. If the body is 100 characters or less, it should not put three dots at the end. Include the module you built in question number 7 in the Article class and use it when returning the title.

module Blog
  class Article
    def initialize(title, body)
      @title = title
      @body = body
    end

    def title
      words_no_cap = ["in", "the", "of", "and", "or", "from"]
        phrase = @title.split(" ").map {|word|
            if words_no_cap.include?(word)
                word
            else
                word.capitalize
            end
        }.join(" ")
      p phrase
      end


    def body
      @body
    end

    def summary
      @title.first(5) + @body.first(20)
    end
  end
end

class Snippet < Blog::Article
    # def title
    #   super
    # end

  def body
    if @body.length > 100
          "#{@body[0..100]}..."
    else
        @body
    end
  end

end

article = Blog::Article.new("lord of the rings", "It was the best of times")
article.title
snippet = Snippet.new("lord of the flies", "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
p snippet.body
p article.body
# article.summary
