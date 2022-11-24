class StudentsController < ApplicationController
# Returns JSON data representing a list of all students
    def index
        students = Student.all
        render json: students
    end

# Returns JSON data representing a list of all students, ordered by grade from highest to lowest
    def grades
        students = Student.order(grade: :desc)
        render json: students
    end

# Returns JSON data representing the one student with the highest grade
# Note: while the other two routes should return an array of data, this route should return just one student object!
    def highest_grade
        student = Student.order(grade: :desc).first
        render json: student
    end
end
