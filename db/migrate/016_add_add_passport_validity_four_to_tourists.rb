class AddAddPassportValidityFourToTourists < ActiveRecord::Migration
  def change
    add_column :tourists, :add_passport_validity_four, :date
  end
end
