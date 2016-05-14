class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries, id: :uuid  do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
