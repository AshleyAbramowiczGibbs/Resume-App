class Api::ExperiencesController < ApplicationController


  def create
    @experience = Experience.new(
      student_id: current_user.id,
      start_date: params[:start_date],
      end_date: params[:end_date],
      job_title: params[:job_title],
      company_name: params[:company_name],
      details: params[:details]
      )
    if @experience.save
      render json: {message: "Experience created successfully!"}
    else
      render json: {message: @experience.errors.full_messages}, status: 422
    end
    
  end

  def update
    @experience = Experience.find_by(id: params[:id])
    @experience.start_date = params["start_date"] || @experience.start_date
    @experience.end_date = params["end_date"] || @experience.end_date
    @experience.job_title = params["job_title"] || @experience.job_title
    @experience.company_name = params["company_name"] || @experience.company_name
    @experience.details = params["details"] || @experience.details

    if @experience.save
      render json: {message: "Experience created successfully!"}
    else
      render json: {message: @experience.errors.full_messages}, status: 422
    end
  end

  def destroy
    @experience = Experience.find_by(id: params[:id])
    if @experience.destroy
      render json: {message: "User successfully destroyed!"}
    else
      render json: {message: @experience.errors.full_messages}, status: 422
    end
  end

end
