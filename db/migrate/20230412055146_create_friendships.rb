class CreateFriendships < ActiveRecord::Migration[7.0]
  def change
    create_table :friendships do |t|

      t.timestamps
      t.references :sender,null: false,foreign_key: { to_table: :users}
      t.references :receiver,null: false,foreign_key: { to_table: :users}

    end

  end
end
