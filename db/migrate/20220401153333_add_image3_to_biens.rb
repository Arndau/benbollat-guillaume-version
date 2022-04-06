class AddImage3ToBiens < ActiveRecord::Migration[6.1]
  def change
    add_column :biens, :image3, :string
  end
end
