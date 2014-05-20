# Handles signup creation
class SignupsController < ApplicationController
  def create
    @signup = Signup.new signup_params
    @spots_left = Charge.spots_left
    if @spots_left > 0 && @signup.save
      respond_to do |format|
        format.js { render 'payment' }
      end
    else
      respond_to do |format|
        format.js { render 'errors' }
      end
    end
  end

  def charge
    customer = Stripe::Customer.create email: params[:stripeEmail],
                                       card: params[:stripeToken]
    Stripe::Charge.create customer: customer, amount: 30_000,
                          description: 'BJC Tuition', currency: 'usd'
    Charge.create email: params[:stripeEmail]
    redirect_to success_path
  rescue Stripe::CardError => e
    flash[:error] = e.message
    puts "CardError! #{e.message}"
    redirect_to signup_path
  end

  private

  def signup_params
    params.require(:signup).permit(:first_name, :last_name, :email, :phone,
                                   :grade, :gender, :why_take)
  end
end
