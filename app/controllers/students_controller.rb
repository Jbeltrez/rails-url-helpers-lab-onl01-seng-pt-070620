class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    
    @students = Student.all
    # binding.pry
    # binding.pry
  end

  def show
    @student = Student.find(params[:id])
  end

  def activate 
    @student = Student.find(params[:id])
    @student.active = !@student.active 
    @student.save
    redirect_to student_path(@student)
    
  end 

  private

    def set_student
      @student = Student.find(params[:id])
    end
end