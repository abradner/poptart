# frozen_string_literal: true

class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.belongs_to :owner, foreign_key: true
      t.boolean :served, default: false, index: true

      t.timestamps
    end
  end
end
