class AddReferrerToPactMember < ActiveRecord::Migration[5.1]
  def change
    add_column :pact_members, :referrer_id, :integer
  end
end
