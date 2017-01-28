class CreateEstablecimientos < ActiveRecord::Migration
  def change
    create_table :establecimientos do |t|
      t.string :nombre, null: false

      t.timestamps null: false
    end
  end
end
