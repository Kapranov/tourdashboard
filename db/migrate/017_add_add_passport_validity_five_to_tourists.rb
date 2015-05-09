class AddAddPassportValidityFiveToTourists < ActiveRecord::Migration
  def change
    add_column :tourists, :add_passport_validity_five, :date
  end
end
