require('minitest/autorun')
require('minitest/rg')
require_relative('../lib.rb')

class TestLibrary < MiniTest::Test

  def test_get_book
    book = {
       title: "lord_of_the_rings",
       rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
       }
     }
    assert_equal("lord_of_the_rings", book.get_book)
  end

end
