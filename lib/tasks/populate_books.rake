namespace :books do
  desc "This creates a bunch of books"
  task generate: :environment do

    p 'Generating books'
    100.times do |i|
      Book.create!(title: "Harry Potter #{i}", author: "Whoever")
    end
    p 'All done'
  end

  desc "This updates the number of pages on each book to 500"
  task update_pages: :environment do
    books_to_be_updated = Book.where(number_of_pages: nil)

    books_to_be_updated.each do |book|
      book.update_attributes(number_of_pages: 500)
    end
  end
end
