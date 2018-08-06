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

  def test_set_student_name
    student = CCStudent.new('James', 'E24')
    student.set_name('Sharon')
    assert_equal('Sharon', student.name)
  end

  def test_set_student_cohort
    student = CCStudent.new('James', 'E24')
    student.set_cohort('G24')
    assert_equal('G24', student.cohort)
  end

  def test_student_talks
    student = CCStudent.new('James', 'E24')
    assert_equal('I can talk!', student.talk)
  end
end
