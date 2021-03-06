class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :name
      t.text :description
      t.date :publish_date

      t.timestamps
    end
  end
end
