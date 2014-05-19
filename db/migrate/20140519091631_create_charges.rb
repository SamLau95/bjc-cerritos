class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.string :email

      t.timestamps
    end
  end
end
