class CreateReservationTables < ActiveRecord::Migration[7.0]
  def change
    create_table :reservation_tables do |t|
      t.string :name
      t.integer :NumberOfPeople
      t.integer :table
      t.date :ReservationDate
      t.time :ReservationTime
      t.string :telephone
      t.text :description
      
    end
  end
end
