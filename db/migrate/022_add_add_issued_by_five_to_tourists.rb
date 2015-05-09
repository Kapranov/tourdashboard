class AddAddIssuedByFiveToTourists < ActiveRecord::Migration
  def change
    add_column :tourists, :add_issued_by_five, :integer
  end
end
