# Controller for static pages
class PagesController < ApplicationController
  def home
  end

  def signup
    redirect_to https_url if should_use_https?
    @signup = Signup.new
    @spots_left = Charge.spots_left
  end

  def success
  end

  private

  def https_url
    'https://bjc.herokuapp.com/signup'
  end

  def should_use_https?
    Rails.env.production? && request.original_url != https_url
  end
end
