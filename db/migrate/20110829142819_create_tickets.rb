class CreateTickets < ActiveRecord::Migration
  def self.up
    create_table :tickets do |t|
      t.string :title
      t.text :question
      t.boolean :status
      t.references :client

      t.timestamps
    end
  end

  def self.down
    drop_table :tickets
  end
end
