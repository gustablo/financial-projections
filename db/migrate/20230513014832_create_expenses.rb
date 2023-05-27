class CreateExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :expenses do |t|
      t.float :amount
      t.boolean :fixed
      t.date :payed_at
      t.string :name

      t.timestamps
    end
  end
end
