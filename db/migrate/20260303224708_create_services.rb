class CreateServices < ActiveRecord::Migration[8.0]
  def change
    create_table :services do |t|
      t.string :title
      t.text :desc

      t.timestamps
    end
  end
end
