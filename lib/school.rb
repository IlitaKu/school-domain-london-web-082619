class School
  attr_reader :roster, :name
  def initialize(name)
    @name = name
    @roster = {}
  end
  def add_student(student_name, grade)
    if @roster.include?(grade)
      @roster[grade] << student_name
    else
      @roster[grade] = []
    @roster[grade] << student_name
   end
  end
  
  def grade(grade)
    grades = []
    @roster.each do |key,value| 
      if key == grade
        grades << value
      end
    end
    return grades.flatten
  end
  def sort
    @roster.sorted
    
  end
end




