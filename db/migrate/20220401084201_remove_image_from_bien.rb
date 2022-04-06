class RemoveImageFromBien < ActiveRecord::Migration[6.1]
  def change
    remove_column :biens, :image, :string
  end
end
