class AddGravatarHashToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :gravatar_hash, :string
  end
end
