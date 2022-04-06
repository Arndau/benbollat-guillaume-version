class AddImage2ToBiens < ActiveRecord::Migration[6.1]
  def change
    add_column :biens, :image2, :string
  end
end
