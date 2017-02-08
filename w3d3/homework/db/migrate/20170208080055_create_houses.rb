class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :address, nil: false
      t.timestamps
    end
  end
end
