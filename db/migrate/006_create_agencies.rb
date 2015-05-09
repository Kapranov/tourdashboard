class CreateAgencies < ActiveRecord::Migration
  def change
    create_table :agencies do |t|
      t.string :agency_name
      t.integer :agency_pn
      t.integer :agency_edrpoy
      t.string :agency_city
      t.string :agency_street
      t.integer :agency_post_index
      t.string :agency_house
      t.integer :agency_apart
      t.string :city_legal
      t.string :street_legal
      t.integer :post_index_legal
      t.string :house_legal
      t.integer :apart_legal
      t.integer :agency_phone_work
      t.integer :agency_phone_mobile
      t.string :agency_email_one
      t.string :agency_email_two
      t.string :agency_email_three
      t.string :agency_web
      t.string :agency_comment
      t.string :bank
      t.integer :mfo
      t.integer :account
      t.string :contract_number
      t.date :contract_from

      t.timestamps
    end
  end
end
