class AddAddIssuedByFourToTourists < ActiveRecord::Migration
  def change
    add_column :tourists, :add_issued_by_four, :integer
  end
end
