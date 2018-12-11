class CoursesController < ApplicationController
before_action :authenticate_user!
before_action :set_course, only: [:show, :edit, :update, :destroy]

  def index
    @courses = Course.all
  end
  def show
    @matricula = Matricula.new
  end
  def create
    @course = Course.create(course_params)
    redirect_to courses_url, notice: 'has creado un nuevo curso.'
  end
  def new
    @course = Course.new
  end

  def destroy
    if @course.destroy
      respond_to do |format|
        format.html { redirect_to courses_url, notice: 'Post was successfully destroyed.' }
      end
    end
  end


  private
    def set_course
      @course = Course.find(params[:id])
    end
    def course_params
      params.require(:course).permit(:name, :description)
    end
end
