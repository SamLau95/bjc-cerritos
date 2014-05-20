# Controller for static pages
class PagesController < ApplicationController
  def home
  end

  def signup
    redirect_to 'https://bjc.herokuapp.com/signup' if Rails.env.production? && request.original_url != 'https://bjc.herokuapp.com/signup'
    @signup = Signup.new
    @spots_left = Charge.spots_left
  end

  def success
  end
end
