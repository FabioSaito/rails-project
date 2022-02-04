class CreateTelephones < ActiveRecord::Migration[6.1]
  def change
    create_table :telephones do |t|
      t.string :number
      t.string :category
      t.boolean :principal
      t.references :contact, null: false, foreign_key: true

      t.timestamps
    end
  end
end
