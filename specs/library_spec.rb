require('minitest/autorun')
require('minitest/rg')
require_relative('../library.rb')

class LibraryTest < Minitest::Test

  def setup

    @books = [
      {
        title: "lord_of_the_rings",
        rental_details: {
         student_name: "Jeff",
         date: "01/12/16"
        }
      },
      {
        title: "ready_player_one",
        rental_details: {
         student_name: "James",
         date: "01/02/17"
        }
      },
      {
        title: "the_dreaming_void",
        rental_details: {
         student_name: "Laura",
         date: "21/10/18"
        }
      }
    ]

    @library = Library.new(@books)
  end

  def test_get_books()
    assert_equal(@books, @library.books)
  end
end
