class Student

  def initialize(student_name, cohort)
    @student_name = student_name
    @cohort = cohort
  end

  def student_name
    return @student_name
  end

  def student_cohort
    return @cohort
  end

  def set_student_name(student_name)
    @student_name = student_name
  end

  def set_student_cohort(cohort)
    @cohort = cohort
  end

  def make_student_talk
    return "I can talk"
  end

  def favourite_language(fav_lang)
    return "I love #{fav_lang}!"
  end
end
