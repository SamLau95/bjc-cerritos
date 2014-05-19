# Controller for static pages
class PagesController < ApplicationController
  def home
  end

  def signup
    @signup = Signup.new
    @spots_left = Charge.spots_left
  end

  def success
  end
end
