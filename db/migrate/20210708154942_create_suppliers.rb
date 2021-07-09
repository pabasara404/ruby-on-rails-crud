class CreateSuppliers < ActiveRecord::Migration[6.1]
  def change
    create_table :suppliers do |t|
      t.string :name, not_null: false
      t.integer :age, not_null: false
      t.timestamps
    end
  end
end
