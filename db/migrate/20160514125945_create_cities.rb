class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities, id: :uuid  do |t|
      t.string :name
      t.uuid :state_id

      t.timestamps null: false
    end
  end
end
