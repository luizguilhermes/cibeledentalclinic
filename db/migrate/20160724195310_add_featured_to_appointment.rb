class AddFeaturedToAppointment < ActiveRecord::Migration[5.0]
  def change
    add_column :appointments, :featured, :boolean
  end
end
