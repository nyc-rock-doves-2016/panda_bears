class RemoveNotNullFromPlayerIdInRounds < ActiveRecord::Migration
  def change
    change_column :rounds, :player_id, :integer, null: true
  end
end
