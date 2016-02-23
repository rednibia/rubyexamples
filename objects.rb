class Student
  def initialize(name, gender, grade, average)
    @name = name
    @gender = gender
    @grade = grade
    @average = average
  end

  def display
    return "Name: #{@name}" + "\nGender: #{@gender}" + "\nGrade: #{@grade}" + "\nAverage: #{@average}"

  end

  def name
    return @name
  end

  def change_ave(new)
    @average = new
  end

  def letter_grade
    if @grade >= 90
      return "A"
    elsif @grade >= 80
      return "B"
    elsif @grade >= 70
      return "C"
    elsif @grade >= 65
      return "D"
    else
      return "F"
    end
  end

end

student = Student.new("Billy Martin", "male", 8, 94)
student.change_ave(92)
students = [student]
student = Student.new("Sally Arbuncle", "female", 6, 99)
students.push(student)
puts students[0].display
puts "\n" + students[1].name
puts students[1].letter_grade