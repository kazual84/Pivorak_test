class CreateJorneys < ActiveRecord::Migration[5.1]
  def change
    create_table :jorneys do |t|
      t.string :title
      t.integer :capacity
      t.datetime :start_datetime

      t.timestamps
    end
  end
end
