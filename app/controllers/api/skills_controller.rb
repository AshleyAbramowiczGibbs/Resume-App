class Api::SkillsController < ApplicationController

  def create
    @skill = Skill.new(
      student_id: params[:student_id],
      skill_name: params[:skill_name]
    )
    if @skill.save
      render json: {message: "Skill created successfully!"}
    else
      render json: {message: @skill.errors.full_messages}, status: 422
    end
  end

  def update
    @skill = Skill.find_by(id: params[:id])

    @skill.student_id = params[:student_id]
    @skill.skill_name = params[:skill_name]

    if @skill.save
      render json: {message: "skill successfully updated!"}
    else
      render json: {message: @skill.errors.full_messages}, status: 422
    end
  end

  def destroy
    @skill = Skill.find_by(id: params[:id])
    if @skill.destroy
      render json: {message: "User successfully destroyed!"}
    else
      render json: {message: @student.errors.full_messages}, status: 422
    end
  end
end
