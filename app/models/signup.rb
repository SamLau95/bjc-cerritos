# == Schema Information
#
# Table name: signups
#
#  id         :integer          not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  email      :string(255)
#  phone      :string(255)
#  gender     :string(255)
#  grade      :string(255)
#  why_take   :text
#  created_at :datetime
#  updated_at :datetime
#

# Signups for class
class Signup < ActiveRecord::Base
  validates :first_name, :last_name, :email, :phone, :gender, :grade,
            :why_take, presence: true
end
