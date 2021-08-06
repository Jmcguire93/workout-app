class ChangeDescriptionToText < ActiveRecord::Migration[6.1]
  def change
    change_column :exercises, :instructions, :text
  end
end
