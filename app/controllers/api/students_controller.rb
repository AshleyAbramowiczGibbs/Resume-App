class Api::StudentsController < ApplicationController

  def index
    render json: {message: "Hello!! WORLD!!!, this is jett"}
  end
end
