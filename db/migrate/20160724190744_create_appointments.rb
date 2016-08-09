class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.string :health_insurance
      t.datetime :date
      t.float :price
      t.string :service

      t.timestamps
    end
  end
end
