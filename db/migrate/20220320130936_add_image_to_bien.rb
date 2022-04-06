class AddImageToBien < ActiveRecord::Migration[6.1]
  def change
    add_column :biens, :image, :string
  end
end
