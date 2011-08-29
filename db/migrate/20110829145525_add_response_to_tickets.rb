class AddResponseToTickets < ActiveRecord::Migration
  def self.up
    add_column :tickets, :response, :text
  end

  def self.down
    remove_column :tickets, :response
  end
end
