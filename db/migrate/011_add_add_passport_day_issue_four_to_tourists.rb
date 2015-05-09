class AddAddPassportDayIssueFourToTourists < ActiveRecord::Migration
  def change
    add_column :tourists, :add_passport_day_issue_four, :date
  end
end
