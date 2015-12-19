class HomeController < ApplicationController
  def index
    @user = User.new
<<<<<<< HEAD
  end

  def products
  end
=======
    @categories = Category.all
	end
>>>>>>> development
end