class AddOrdinalityToSteps < ActiveRecord::Migration
  def change
    add_column :steps, :ordinality, :integer
  end
end
