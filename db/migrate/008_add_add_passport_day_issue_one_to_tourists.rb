class AddAddPassportDayIssueOneToTourists < ActiveRecord::Migration
  def change
    add_column :tourists, :add_passport_day_issue_one, :date
  end
end
