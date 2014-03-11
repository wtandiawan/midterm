Then(/^a new book with title "(.*?)" belonging to "(.*?)" should exist$/) do |book_title, author_name|
  author = Author.where(name: author_name).first
  author.should_not be_nil

  book = Book.where(title: book_title, author: author).first
  book.should_not be_nil
end

Given(/^book "(.*?)" exists for that author$/) do |book_title|
  author = Author.last
  author.should_not be_nil
  Book.create! title: book_title, review: 'Example Review', author: author
end
