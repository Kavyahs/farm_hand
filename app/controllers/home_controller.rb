class HomeController < ApplicationController
  def index
    @user = User.new
    @categories = Category.all
  end
end