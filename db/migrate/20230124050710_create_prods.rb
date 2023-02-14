class CreateProds < ActiveRecord::Migration[7.0]
  def change
    reversible do |dir|
      create_table :prods do |t|
        dir.up {t.change :price,:integer}
        dir.down {t.change :price, :string}
        t.string :name
        t.string :type
        # t.integer :price
        t.text :description

        t.timestamps
      end
    end
  end
end
