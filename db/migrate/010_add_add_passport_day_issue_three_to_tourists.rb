class AddAddPassportDayIssueThreeToTourists < ActiveRecord::Migration
  def change
    add_column :tourists, :add_passport_day_issue_three, :date
  end
end
