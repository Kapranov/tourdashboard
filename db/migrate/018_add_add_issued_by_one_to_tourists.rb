class AddAddIssuedByOneToTourists < ActiveRecord::Migration
  def change
    add_column :tourists, :add_issued_by_one, :integer
  end
end
