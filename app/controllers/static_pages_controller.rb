class StaticPagesController < ApplicationController
  def home
    @micropost = current_user.microposts.build if signed_in?
end

  def help
  end

  def about
    flash[:notice] = "Testing the flash in Static_Pages_Controller.rb"
  end
end
