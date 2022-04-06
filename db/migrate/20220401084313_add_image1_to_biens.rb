class AddImage1ToBiens < ActiveRecord::Migration[6.1]
  def change
    add_column :biens, :image1, :string
  end
end
