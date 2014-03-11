Given(/^author "(.*?)" exists$/) do |author_name|
  Author.create! name: author_name, genres: 'example genres'
end
