class AddAddPassportDayIssueFiveToTourists < ActiveRecord::Migration
  def change
    add_column :tourists, :add_passport_day_issue_five, :date
  end
end
