class School
  attr_reader :name, :houses, :courses

  def initialize(name, houses)
    @name = name
    @houses = houses
    @courses = []
  end

  def add_course(course)
    @courses << course
  end

  def sort(student)
    student.house = @houses.sample
  end

  def sort_students
    @courses.each do |course|
      course.students.each do |student|
        if student.house == nil
        sort(student)
        end
      end
    end
  end

  def student_names
    names = []
    @courses.each do |course|
      course.students.each do |student|
        names << student.name
      end
    end
    names.uniq
  end

end
