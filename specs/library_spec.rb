require('minitest/autorun')
require('minitest/rg')
require_relative('../library.rb')

class LibraryTest < Minitest::Test

  def setup

    @books = [
      {
        title: "lord_of_the_rings",
        author: "J. R. R. Tolkien",
        rental_details: {
         student_name: "Jeff",
         date: "01/12/16"
        }
      },
      {
        title: "ready_player_one",
        author: "Ernest Cline",
        rental_details: {
         student_name: "James",
         date: "01/02/17"
        }
      },
      {
        title: "the_dreaming_void",
        author: "Peter F. Hamilton",
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

  def test_get_book_info_by_title
    assert_equal(@books[1], @library.book_by_title('ready_player_one'))
  end

  def test_get_book_info_by_title__no_match
    assert_nil(@library.book_by_title('the_temporal_void'))
  end
end
