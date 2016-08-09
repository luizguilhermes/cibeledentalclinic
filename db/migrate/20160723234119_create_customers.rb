class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :customer_name
      t.string :customer_cpf
      t.string :customer_rg
      t.string :customer_gender

      t.timestamps
    end
  end
end
