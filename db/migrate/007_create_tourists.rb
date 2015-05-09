class CreateTourists < ActiveRecord::Migration
  def change
    create_table :tourists do |t|
      t.string :client
      t.string :lastname_ua
      t.string :firstname_ua
      t.string :middlename_ua
      t.string :lastname_en
      t.string :firstname_en
      t.date :day_born
      t.string :gender
      t.string :add_lastname_en_one
      t.string :add_firstname_en_one
      t.string :add_passport_one
      t.date :add_day_born_one
      t.integer :add_phone_one
      t.string :add_lastname_en_two
      t.string :add_firstname_en_two
      t.string :add_passport_two
      t.date :add_day_born_two
      t.integer :add_phone_two
      t.string :add_lastname_en_three
      t.string :add_firstname_en_three
      t.string :add_passport_three
      t.date :add_day_born_three
      t.integer :add_phone_three
      t.string :add_lastname_en_four
      t.string :add_firstname_en_four
      t.string :add_passport_four
      t.date :add_day_born_four
      t.integer :add_phone_four
      t.string :add_lastname_en_five
      t.string :add_firstname_en_five
      t.string :add_passport_five
      t.date :add_day_born_five
      t.integer :add_phone_five
      t.string :country
      t.string :foreign_suite
      t.integer :foreign_number
      t.date :foreign_day_issue
      t.integer :issued_by
      t.date :validity
      t.string :city
      t.string :street
      t.integer :post_index
      t.string :house
      t.integer :apartment
      t.integer :phone_mobile
      t.integer :phone_home
      t.integer :phone_work
      t.string :email
      t.string :skype
      t.text :comment
      t.string :client_status
      t.string :learned_from
      t.integer :msg_sms
      t.integer :msg_mail

      t.timestamps
    end
  end
end
