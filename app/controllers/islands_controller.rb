class IslandsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @islands = Island.where("name LIKE ?","%#{params[:name]}%")
  end
end
