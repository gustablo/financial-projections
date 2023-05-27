class CreatePatrimonies < ActiveRecord::Migration[7.0]
  def change
    create_table :patrimonies do |t|
      t.float :amount

      t.timestamps
    end
  end
end
