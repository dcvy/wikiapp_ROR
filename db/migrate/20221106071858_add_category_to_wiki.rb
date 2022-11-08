class AddCategoryToWiki < ActiveRecord::Migration[7.0]
  def change
    add_reference :wikis, :category, null: false, foreign_key: true
  end
end
