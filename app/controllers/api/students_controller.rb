class Api::StudentsController < ApplicationController

  def index
    render json: {message: "Hello!! WORLD!!!"}
  end
end
