class Api::EducationsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

  def create
    @education = Education.new(
      student_id: surrent_user.id,
      start_date: params[:start_date],
      end_date: params[:end_date],
      degree: params[:degree],
      university_name: params[:university_name],
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
      render json: {message: "Education updated successfully!"}
    else
      render json: {message: @education.errors.full_messages}, status: 422
    end
  end

  def destroy
    @education = Education.find_by(id: params[:id])
    if @education.destroy
      render json: {message: "Education successfully destroyed!"}
    else
      render json: {message: @education.errors.full_messages}, status: 422
    end
  end

end
