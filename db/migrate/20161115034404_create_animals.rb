class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.references :animal_type, index: true

      t.timestamps null: false
    end
    add_foreign_key :animals, :animal_types
  end
end
