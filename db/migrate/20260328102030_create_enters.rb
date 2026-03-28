class CreateEnters < ActiveRecord::Migration[8.0]
  def change
    create_table :enters do |t|
      t.string :title

      t.timestamps
    end
  end
end
