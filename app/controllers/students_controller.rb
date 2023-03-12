class StudentsController < ApplicationController

    def index
        students = Student.all 
        render json: students
    end

    def grades
        students = Student.all
        students_by_grades = students.sort_by(&:grade).reverse()
        render json: students_by_grades
    end
end
