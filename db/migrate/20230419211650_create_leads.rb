class CreateLeads < ActiveRecord::Migration[7.0]
  def change
    create_table :leads do |t|
      t.string :name
      t.string :e_mail
      t.string :phone_number
      t.integer :price_range_low
      t.integer :price_range_high
      t.integer :salary
      t.string :current_city
      t.string :move_in_city
      t.integer :credit_score

      t.timestamps
    end
  end
end
