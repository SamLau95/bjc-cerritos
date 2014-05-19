# == Schema Information
#
# Table name: charges
#
#  id         :integer          not null, primary key
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Charge < ActiveRecord::Base
  def self.spots_left
    10 - count
  end
end
