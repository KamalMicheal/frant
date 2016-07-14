book_file = File.open(File.join(Rails.root, 'db', 'data', 'books.xml'))
books_xml = Nokogiri.XML(book_file)

book_entry = {}

Book.delete_all

books_xml.xpath('//row').each do |entry|
  entry.elements.each do |element|
    book_entry[element.attribute('name').value] = element.children.text
  end

  author = Author.find_or_create_by(name: book_entry['author'])
  category = Category.find_or_create_by(name: book_entry['category'])

  Book.create(title: book_entry['title'] ,
              abstract: book_entry['abstract'],
              file: book_entry['filename'],
              author: author,
              category: category)

end

