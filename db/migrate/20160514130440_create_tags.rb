class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags, id: :uuid do |t|
      t.string :name
      t.string :type

      t.timestamps null: false
    end
  end
end
