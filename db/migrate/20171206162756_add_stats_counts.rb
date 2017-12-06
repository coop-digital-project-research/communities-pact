class AddStatsCounts < ActiveRecord::Migration[5.1]
  def change
    add_column :pact_members, :view_count, :integer, default: 0
    add_column :pact_members, :print_count, :integer, default: 0
  end
end
