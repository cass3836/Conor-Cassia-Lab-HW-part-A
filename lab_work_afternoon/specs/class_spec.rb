require('minitest/autorun')
require('minitest/rg')
require_relative('../class')

class TestStudentClass < MiniTest::Test

  def setup
    @student = Student.new("Conor", "C25")
  end

  def test_student_name
    assert_equal("Conor", @student.student_name)
  end

  def test_student_cohort
    assert_equal("C25", @student.student_cohort)
  end

  def test_set_student_name
    @student.set_student_name("Cassia")
    assert_equal("Cassia", @student.student_name)
  end

  def test_set_cohort
    @student.set_student_cohort("E21")
    assert_equal("E21", @student.student_cohort)
  end

  def test_student_talk
    assert_equal("I can talk", @student.make_student_talk)
  end

  def test_favourite_language
    assert_equal("I love Ruby!", @student.favourite_language("Ruby"))
  end

end
