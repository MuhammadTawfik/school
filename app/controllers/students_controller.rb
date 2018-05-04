class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update]
  before_action :class_room

  # GET /students
  # GET /students.json
  def index
    @students = class_room.students.all
  end

  # GET /students/1
  # GET /students/1.json
  def show
  end

  # GET /students/new
  def new
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students
  # POST /students.json
  def create
    @student = class_room.students.new(student_params)

    respond_to do |format|
      if @student.save
        format.html { redirect_to class_room_student_path(class_room,@student), notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to class_room_student_path(class_room,@student), notice: 'Student was successfully updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:name, :class_room_id, :email)
    end

    def class_room
      @class_room ||= ClassRoom.find(params[:class_room_id])
    end
end
