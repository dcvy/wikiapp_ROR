class CreateWikis < ActiveRecord::Migration[7.0]
  def change
    create_table :wikis do |t|
      t.string :title
      t.string :description
      t.string :kind
      t.string :author

      t.timestamps
    end
  end
end
