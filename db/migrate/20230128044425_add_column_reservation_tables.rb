class AddColumnReservationTables < ActiveRecord::Migration[7.0]
  def change
    add_column :reservation_tables, :title, :string
    add_column :reservation_tables, :content, :text
    add_column :reservation_tables, :start_time, :datetime
  end
end
