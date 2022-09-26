class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :animal_type
      t.string :name
      t.string :image_url
      t.string :breed
      t.string :age
      t.string :gender
      t.boolean :available
      t.integer :adoption_fee

      t.timestamps
    end
  end
end
