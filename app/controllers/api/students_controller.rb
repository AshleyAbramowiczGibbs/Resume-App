class Api::StudentsController < ApplicationController

  def index
    @students = Student.all
    @students = @students.order(:id => :asc)
    render "index.json.jbuilder"
  end

  def show
    @student = Student.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def create
    @student = Student.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
      )
    if @student.save
      render json: {message: "User created successfully!"}
    else
      render json: {message: @student.errors.full_messages}, status: 422
    end
    
  end

  def update
    @student = Student.find_by(id: params[:id])

    @student.first_name = params["first_name"] || @student.first_name
    @student.last_name = params["last_name"] || @student.last_name
    @student.email = params["email"] || @student.email
    @student.phone_number = params["phone_number"] || @student.phone_number
    @student.short_bio = params["short_bio"] || @student.short_bio
    @student.linkedin_url = params["linkedin_url"] || @student.linkedin_url
    @student.twitter_handle = params["twitter_handle"] || @student.twitter_handle
    @student.website_url = params["website_url"] || @student.website_url
    @student.online_resume_url = params["online_resume_url"] || @student.online_resume_url
    @student.github_url = params["github_url"] || @student.github_url
    @student.photo = params["photo"] || @student.photo

    if @student.save
      render json: {message: "User successfully updated!"}
    else
      render json: {message: @student.errors.full_messages}, status: 422
    end
  end

  def destroy
    @student = Student.find_by(id: params[:id])
    if @student.destroy
      render json: {message: "User successfully destroyed!"}
    else
      render json: {message: @student.errors.full_messages}, status: 422
    end
  end
end
