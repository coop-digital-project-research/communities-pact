class AddSourceToPacts < ActiveRecord::Migration[5.1]
  def change
    add_column :pacts, :source, :string, default: 'none'
    add_column :pact_members, :source, :string, default: 'none'
  end
end
