class CreateSeries < ActiveRecord::Migration[6.1]
  def change
    create_table :series do |t|
      t.boolean :highlighted, default: false
      t.string :title
      t.text :description
      t.string :thumbnail_key
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
