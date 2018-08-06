require('minitest/autorun')
require('minitest/rg')
require_relative('../cc_student.rb')


class StudentTest < Minitest:: Test

  def test_get_student_name
    student = CCStudent.new('James', 'E24')
    assert_equal('James', student.name)
  end

  def test_get_student_cohort
    student = CCStudent.new('James', 'E24')
    assert_equal('E24', student.cohort)
  end
end
