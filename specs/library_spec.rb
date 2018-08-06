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

    @new_book = {
      title: "the_temporal_void",
      author: "Peter F. Hamilton",
      rental_details: {
        student_name: "",
        date: ""
      }
    }
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

  def test_get_book_rental_details_by_title
    rental_details = @library.rental_details_by_title('the_dreaming_void')
    assert_equal(@books[2][:rental_details], rental_details)
  end

  def test_get_book_rental_details_by_title__no_match
    rental_details = @library.rental_details_by_title('armada')
    assert_nil(rental_details)
  end

  def test_add_book
    @library.add_book(@new_book)
    book = @library.book_by_title('the_temporal_void')
    assert_equal(@new_book, book)
  end

  def test_set_rental_details
    @library.set_rental_details('lord_of_the_rings', 'Alvaro', '13/08/18')
    expected_details = {student_name: 'Alvaro', date: '13/08/18'}
    actual_details = @library.rental_details_by_title('lord_of_the_rings')
    assert_equal(expected_details, actual_details)
  end
end
