class CreatePhones < ActiveRecord::Migration[8.0]
  def change
    create_table :phones do |t|
      t.string :phone
      t.boolean :max
      t.boolean :telegram
      t.boolean :vk
      t.references :organization, null: false, foreign_key: true

      t.timestamps
    end
  end
end
