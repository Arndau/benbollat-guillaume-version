class AddSurnameToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :surnom, :string
  end
end
