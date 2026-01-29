class CreateNewdates < ActiveRecord::Migration[7.2]
  def change
    create_table :newdates do |t|
      t.string :title
      t.integer :startday
      t.integer :endday
      t.string :allday
      t.string :memo

      t.timestamps
    end
  end
end
