class CreateMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.string :author
      t.string :email
      t.text :review

      t.timestamps null: false
    end
  end
end
