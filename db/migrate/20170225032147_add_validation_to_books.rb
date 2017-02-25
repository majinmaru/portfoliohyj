class AddValidationToBooks < ActiveRecord::Migration
  def change
    change_column :books, :content, :text, Null: false
  end
end
