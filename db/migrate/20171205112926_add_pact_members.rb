class AddPactMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :pact_members do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.integer :pact_id, null: false
      t.string :member_slug, null: false
      t.string :public_slug, null: false
      t.timestamps
    end
  end
end
