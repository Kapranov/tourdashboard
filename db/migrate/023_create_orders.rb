class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :odd
      t.string :mark
      t.date :order_day
      t.string :country, null: false, default: 'UA'
      t.date :tour_day_begin
      t.date :tour_day_end
      t.integer :night
      t.date :aircross_begin
      t.date :aircross_end
      t.string :airtable
      t.string :airclass
      t.string :airline
      t.date :hotel_begin
      t.date :hotel_end
      t.string :hotel_name
      t.integer :hotel_class
      t.string :hotel_city
      t.string :hotel_class_room
      t.string :hotel_pay
      t.date :service_begin
      t.date :service_end
      t.string :service_name
      t.date :medical_begin
      t.date :medical_end
      t.string :medical_name
      t.date :visa_begin
      t.date :visa_end
      t.string :visa_need
      t.integer :agency_id
      t.integer :payment_tour
      t.string :payment_currency
      t.integer :sell_tour
      t.string :sell_currency
      t.integer :operator
      t.string :operator_currency
      t.integer :in_total
      t.string :total_currency
      t.integer :paid
      t.string :paid_currency
      t.integer :debt
      t.string :debt_currency
      t.references :tourist, null: false

      t.timestamps
    end
    add_foreign_key :orders, :tourists
    add_index :orders, :tourist_id, unique: true
  end
end
