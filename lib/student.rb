class Student

  attr_accessor :name, :grade
  attr_reader :id


  def initialize(name, grade)
    @name = name
    @grade = grade
  end


  def save
    sql = <<-SQL
      INSERT INTO student (name, grade)
      VALUES (?, ?)
      SQL

    DB[:conn].execute(sql, self.name, self.grade)
    end
  end


  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

end
