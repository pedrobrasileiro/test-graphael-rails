class CreatePesos < ActiveRecord::Migration
  def change
    create_table :pesos do |t|
      t.float :peso
      t.datetime :date

      t.timestamps
    end
  end
end
