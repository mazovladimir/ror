class AddPassportToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :name, :string
    add_column :tickets, :surname, :string
    add_column :tickets, :middlename, :string
    add_column :tickets, :passport, :integer
  end
end
