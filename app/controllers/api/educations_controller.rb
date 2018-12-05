class Api::EducationsController < ApplicationController

  def create
    @education = Education.new(
      start_date: params[:start_date],
      end_date: params[:end_date],
      job_title: params[:job_title],
      company_name: params[:company_name],
      details: params[:details]
      )
    if @education.save
      render json: {message: "Education created successfully!"}
    else
      render json: {message: @education.errors.full_messages}, status: 422
    end
    
  end

  def update
    @education = Education.find_by(id: params[:id])
    @education.start_date = params["start_date"] || @education.start_date
    @education.end_date = params["end_date"] || @education.end_date
    @education.degree = params["degree"] || @education.degree
    @education.university_name = params["university_name"] || @education.university_name
    @education.details = params["details"] || @education.details

    if @education.save
      render json: {message: "Education created successfully!"}
    else
      render json: {message: @education.errors.full_messages}, status: 422
    end
  end

  def destroy
    @education = Education.find_by(id: params[:id])
    if @education.destroy
      render json: {message: "User successfully destroyed!"}
    else
      render json: {message: @education.errors.full_messages}, status: 422
    end
  end

end
