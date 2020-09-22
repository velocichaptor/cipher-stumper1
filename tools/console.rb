require_relative '../config/environment.rb'
def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

magazine1 = Magazine.new('Fantasy Magazine')
author1 = Author.new('Joe Abercrombie')
author2 = Author.new('R.F. Kuang')
blade = Article.new(author1, magazine1, "The Blade Itself")
poppy = Article.new(author2, magazine1, "The Poppy War")
hatred = Article.new(author1, magazine1, "A Little")
dragon = Article.new(author2, magazine1, "The Dragon Republic")







### DO NOT REMOVE THIS
binding.pry

0
