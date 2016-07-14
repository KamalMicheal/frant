bible_file = File.open(File.join(Rails.root, 'db', 'data', 'bible.xml'))
bible_xml = Nokogiri::XML(bible_file)

Bible.delete_all
BibleBook.delete_all

bible_entry = {}

bible_xml.xpath('//row').each do |entry|
  entry.elements.each do |element|
    bible_entry[element.attribute('name').value] = element.children.text
  end

  bible_book = BibleBook.find_or_create_by(name: bible_entry['book'],
                                           book_order: bible_entry['book_order'],
                                           is_new: bible_entry['book_order'].to_i >= 40 ? true : false)

  Bible.create(bible_book: bible_book,
               chapter_number: bible_entry['chapter'],
               verse_number: bible_entry['verse_number'],
               verse: bible_entry['verse'])

end
