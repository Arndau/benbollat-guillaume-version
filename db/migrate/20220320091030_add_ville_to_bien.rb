class AddVilleToBien < ActiveRecord::Migration[6.1]
  def change
    add_column :biens, :ville, :string
  end
end
