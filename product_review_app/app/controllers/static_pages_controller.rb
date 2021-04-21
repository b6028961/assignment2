class StaticPagesController < ApplicationController
  def home
    @profile = session[:user_id]
  end

  def about
  end

  def contact
  end
end
