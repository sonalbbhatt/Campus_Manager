class CoursesStudentsController < ApplicationController
  # GET /courses_students
  # GET /courses_students.xml
  def index
    @courses_students = CoursesStudent.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @courses_students }
    end
  end

  # GET /courses_students/1
  # GET /courses_students/1.xml
  def show
    @courses_student = CoursesStudent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @courses_student }
    end
  end

  # GET /courses_students/new
  # GET /courses_students/new.xml
  def new
    @courses_student = CoursesStudent.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @courses_student }
    end
  end

  # GET /courses_students/1/edit
  def edit
    @courses_student = CoursesStudent.find(params[:id])
  end

  # POST /courses_students
  # POST /courses_students.xml
  def create
    @courses_student = CoursesStudent.new(params[:courses_student])

    respond_to do |format|
      if @courses_student.save
        flash[:notice] = 'CoursesStudent was successfully created.'
        format.html { redirect_to(@courses_student) }
        format.xml  { render :xml => @courses_student, :status => :created, :location => @courses_student }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @courses_student.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /courses_students/1
  # PUT /courses_students/1.xml
  def update
    @courses_student = CoursesStudent.find(params[:id])

    respond_to do |format|
      if @courses_student.update_attributes(params[:courses_student])
        flash[:notice] = 'CoursesStudent was successfully updated.'
        format.html { redirect_to(@courses_student) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @courses_student.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /courses_students/1
  # DELETE /courses_students/1.xml
  def destroy
    @courses_student = CoursesStudent.find(params[:id])
    @courses_student.destroy

    respond_to do |format|
      format.html { redirect_to(courses_students_url) }
      format.xml  { head :ok }
    end
  end
end
