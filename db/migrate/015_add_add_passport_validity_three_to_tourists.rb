class AddAddPassportValidityThreeToTourists < ActiveRecord::Migration
  def change
    add_column :tourists, :add_passport_validity_three, :date
  end
end
