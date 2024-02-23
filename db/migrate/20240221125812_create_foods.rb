# frozen_string_literal: true

class CreateFoods < ActiveRecord::Migration[7.1]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :measurement
      t.decimal :price
      t.integer :quantity

      t.timestamps
    end
  end
end
