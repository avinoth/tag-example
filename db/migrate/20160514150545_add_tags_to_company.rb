class AddTagsToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :tags, :string, array: true, default: []
  end
end
