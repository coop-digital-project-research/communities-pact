class AddCreatorFlagToPacts < ActiveRecord::Migration[5.1]
  def change
    add_column :pact_members, :creator, :boolean, default: false
  end
end
