class CreateBiens < ActiveRecord::Migration[6.1]
  def change
    create_table :biens do |t|
      t.string :address
      t.integer :loyé
      t.boolean :meublé
      t.boolean :saisonnié
      t.boolean :disponible
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
