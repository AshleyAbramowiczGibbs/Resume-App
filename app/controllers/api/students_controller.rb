class Api::StudentsController < ApplicationController

  def index
    @students = Student.all 
    render "index.json.jbuilder"
  end
end
