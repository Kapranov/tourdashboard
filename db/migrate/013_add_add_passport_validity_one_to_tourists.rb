class AddAddPassportValidityOneToTourists < ActiveRecord::Migration
  def change
    add_column :tourists, :add_passport_validity_one, :date
  end
end
