class Library

  attr_reader(:books)

  def initialize(books)
    @books = books
  end

  def book_by_title(title)
    for book in @books
      if book[:title] == title
        return book
      end
    end
  return nil
  end

  def rental_details_by_title(title)
    book = book_by_title(title)
    return book[:rental_details] if book != nil
  end
end
