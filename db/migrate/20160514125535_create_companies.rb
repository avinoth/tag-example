class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies, id: :uuid do |t|
      t.string :name
      t.integer :founding_year
      t.uuid :city_id

      t.timestamps null: false
    end
  end
end
