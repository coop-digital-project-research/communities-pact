class CreatePacts < ActiveRecord::Migration[5.1]
  def change
    create_table :pacts do |t|
      t.string :slug, unique: true
      t.text :name, null: false
      t.text :action, null: false
      t.text :people_requirement, null: false
      t.timestamps
    end
  end
end
