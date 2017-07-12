class UsersController < ApplicationController

  def index
    render text: "hello"
  end

  def show
    # render plain: "#{params[:name]} is MVP"
    render json: params
  end

  def create
    render json: params
  end
end
