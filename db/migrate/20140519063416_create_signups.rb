class CreateSignups < ActiveRecord::Migration
  def change
    create_table :signups do |t|

      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :gender
      t.string :grade
      t.text :why_take
      t.text :interesting_fact
      t.text :experience
      t.string :picture
      t.timestamps
    end
  end
end
