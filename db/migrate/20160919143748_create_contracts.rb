class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.string :name, :null => false

      t.timestamps null: false
    end
  end
end
