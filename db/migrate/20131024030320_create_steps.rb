class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :instruction
      t.integer :ordinality, :recipe_id

      t.timestamps
    end
  end
end
