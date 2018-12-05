class Api::CapstonesController < ApplicationController

  def index
    @capstones = Capstone.all
    render "index.json.jbuilder"
  end

  def show
    input_id = params["id"]
    @capstone = Capstone.find_by(id: input_id)
    render "show.json.jbuilder"  
  end

  def create
    @capstone = Capstone.new(
      student_id: params["student_id"],
      name: params["name"],
      description: params["description"],
      url: params["url"],
      screenshot: params["screenshot"]
      )
    if @capstone.save
      render "show.json.jbuilder"
    else
      render json: {errors: @capstone.errors.full_messages}, status: 422
    end
  end

  def update
    @capstone = Capstone.find_by(id: params["id"])

    @capstone.student_id = params["student_id"] || @capstone.student_id
    @capstone.name = params["name"] || @capstone.name
    @capstone.description = params["description"] || @capstone.description
    @capstone.url = params["url"] || @capstone.url
    @capstone.screenshot = params["screenshot"] || @capstone.screenshot

    if @capstone.save
      render "show.json.jbuilder"
    else
      render json: {errors: @capstone.errors.full_messages}, status: 422
    end
  end

  def destroy
    capstone = Capstone.find_by(id: params[:id])
    
    if capstone.destroy
      render json: {message: "This capstone was deleted"}
    else
      render json: {errors: @capstone.errors.full_messages}, status: 422
    end
  end
end
