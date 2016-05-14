class CreateStates < ActiveRecord::Migration
  def change
    create_table :states, id: :uuid  do |t|
      t.string :name
      t.uuid :country_id

      t.timestamps null: false
    end
  end
end
