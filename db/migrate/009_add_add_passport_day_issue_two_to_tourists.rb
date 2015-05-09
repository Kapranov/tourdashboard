class AddAddPassportDayIssueTwoToTourists < ActiveRecord::Migration
  def change
    add_column :tourists, :add_passport_day_issue_two, :date
  end
end
