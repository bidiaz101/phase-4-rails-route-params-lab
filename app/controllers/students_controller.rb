class StudentsController < ApplicationController

  def index
    students = Student.all

    if(params[:name]) 
      students = students.filter do |student|
        student.to_s.downcase.include?(params[:name].downcase)
      end
    end

    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
