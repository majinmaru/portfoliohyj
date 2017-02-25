class AddAvatarToPost < ActiveRecord::Migration
  def change
    add_column :posts, :avatar, :string
  end
end
