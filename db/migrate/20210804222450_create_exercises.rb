class CreateExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :muscle_group
      t.string :instructions
      t.string :image

      t.timestamps
    end
  end
end
