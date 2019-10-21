require('minitest/autorun')
require('minitest/rg')
require_relative('../lib.rb')

class TestLibrary < MiniTest::Test

  def test_get_books
    library = Library.new()
    assert_equal([], library.get_books())
  end

  def test_add_book_to_library
    library = Library.new()
    library.add_book_to_library("harry_potter")

    assert_equal([{
        title: "harry_potter",
        rental_details: {
         student_name: " ",
         date: " "
        }}], library.get_books)
  end

  def test_get_a_book
    library = Library.new
    library.add_book_to_library("harry_potter")
    library.add_book_to_library("lord_of_the_rings")
    assert_equal({
        title: "harry_potter",
        rental_details: {
         student_name: " ",
         date: " "
        }}, library.get_a_book("harry_potter"))
  end

  def test_change_rental_details
    library = Library.new
    library.add_book_to_library("harry_potter")
    library.change_rental_details("harry_potter", "Jeff", "01/12/16")
    assert_equal({
     student_name: "Jeff",
     date: "01/12/16"
    }, library.get_rental_details("harry_potter"))
  end

  def test_get_rental_details
  library = Library.new
  library.add_book_to_library("harry_potter")
  library.change_rental_details("harry_potter", "Jeff", "01/12/16")
  assert_equal({
   student_name: "Jeff",
   date: "01/12/16"
  }, library.get_rental_details("harry_potter"))
  end


end
