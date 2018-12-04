class Api::StudentsController < ApplicationController

  def index
    render json: {message: "Hello!! WORLD!!!, this is jett, and this is cody. This is ashley"}
  end
end
