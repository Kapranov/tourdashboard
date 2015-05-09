class AddAddIssuedByTwoToTourists < ActiveRecord::Migration
  def change
    add_column :tourists, :add_issued_by_two, :integer
  end
end
