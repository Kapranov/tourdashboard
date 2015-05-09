class AddAddIssuedByThreeToTourists < ActiveRecord::Migration
  def change
    add_column :tourists, :add_issued_by_three, :integer
  end
end
