
# 9. Build a Ruby class called "Book".
# Instances of the Book class must have two attributes: title and chapters.
# Instances must have two methods: add_chapter and chapters.
# The `add_chapter` methods adds a chapter by giving it a title.
# The chapters method should display the number of chapters and lists all the chapters as in:

# book = Book.new
# book.title = "My Awesome Book"
# book.add_chapter("My Awesome Chapter 1")
# book.add_chapter("My Awesome Chapter 2")
# book.chapters

# This should print:

# Your book: My Awesome Book has 2 chapters:
# 1. My Awesome Chapter 1
# 2. My Awesome Chapter 2

#The attr_accessor allows you to declare a Book.title

class Book
  attr_accessor :title

  def initialize
    @chapters = []
  end

  def add_chapter(chapter)
    @chapters << chapter
  end

  def chapters
    puts "Your book: #{@title} has #{@chapters.length} chapters"
    for i in 1..@chapters.length
      puts "#{i}. #{@chapters[i-1]}"
    end
  end

end

book = Book.new
book.title = "My Awesome Book"
p book.title

book.add_chapter("My Awesome Chapter 1")
book.add_chapter("My Awesome Chapter 2")
book.chapters
