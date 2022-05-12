class StudentsController < ApplicationController

  def index
    # byebug
    students = Student.all
    student = students.find_by(params[:name])
    if student 
     render json: student
    else 
      render json: students
    end
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
