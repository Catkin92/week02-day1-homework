class Library

  # attr_reader :title, :rental_details, :student, :date

  def initialize
    @books = []
  end

  def get_books
    return @books
  end

  def get_a_book(book_title)
    for book in @books
      if book_title == book[:title]
        return book
      else
        return nil
      end
    end
  end

  def get_rental_details(book_title)
    for book in @books
      if book_title == book[:title]
        return book[:rental_details]
      else
        return nil
      end
    end
  end

  def change_rental_details(book_title, name, date)
    for book in @books
      if book_title == book[:title]

        book[:rental_details][:student_name].replace(name)
        book[:rental_details][:date].replace(date)
      else
        return nil
      end
    end
  end

  def add_book_to_library(book_title)
    new_book = {title: book_title,
                rental_details: {
                  student_name: " ",
                  date: " "
                  }}
    @books << new_book
  end
end
