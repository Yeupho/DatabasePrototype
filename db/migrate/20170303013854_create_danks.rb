class CreateDanks < ActiveRecord::Migration[5.1]
  def change
    create_table :danks do |t|
      t.string :name

      t.timestamps
    end
  end
end
