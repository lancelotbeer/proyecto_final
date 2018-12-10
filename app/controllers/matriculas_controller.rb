class MatriculasController < ApplicationController

  before_action :authenticate_user!
  def index
    @matriculas = current_user.courses
  end

  def create
    @matricula = CourseInformation.new
    @matricula.user = current_user
    @matricula.course = @course = Course.find(params[:course_id])
    @matricula.save

    respond_to do |format|
      if @matricula.save
        format.html { redirect_to @course, notice: ' ya te Inscribiste felicidades.' }
        format.json { render :show, status: :created, location: @course }
      else
        format.html { redirect_to @course, notice: ' fallo tu inscripcion. #{@matricula.errors.messages} ' }
      end
    end
  end

  def edit
  end

  def destroy
  end

  def show
  end
end
