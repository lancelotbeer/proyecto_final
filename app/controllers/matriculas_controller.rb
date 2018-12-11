class MatriculasController < ApplicationController

  before_action :authenticate_user!
  def index
    @user_courses = current_user.courses
  end

  def create
    @matricula = Matricula.new
    @matricula.user = current_user
    @matricula.course = @course = Course.find(params[:course_id])
    @matricula.save

    respond_to do |format|
      if @matricula.save
        format.html { redirect_to matriculas_path, notice: ' ya te Inscribiste felicidades.' }
        format.json { render :show, status: :created, location: @course }
      else
        format.html { redirect_to courses_url, notice: ' fallo tu inscripcion. #{@matricula.errors.messages} ' }
      end
    end
  end

  def edit
  end

  def destroy
    @matricula = Matricula.where(user: current_user, course: params[:id])
    if @matricula.first.destroy
      respond_to do |format|
        format.html { redirect_to matriculas_url, notice: 'Post was successfully destroyed.' }
      end
    end
  end

  def show
  end
end
