class School
  attr_reader :roster, :name
  def initialize(name)
    @name = name
    @roster = {9=>["Steve", "John"], 8=>["Lilly"]}
  end
  def add_student(student_name, grade)
    if @roster.include?(grade)
      
      @roster[grade] = []
    @roster[grade] << student_name
  
  end
end