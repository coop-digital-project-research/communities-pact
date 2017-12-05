class CreatePacts < ActiveRecord::Migration[5.1]
  def change
    create_table :pacts do |t|
      t.text :action, null: false
      t.integer :people_requirement, null: false
      t.timestamps
    end
  end
end
