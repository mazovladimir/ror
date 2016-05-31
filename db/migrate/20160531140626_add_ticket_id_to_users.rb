class AddTicketIdToUsers < ActiveRecord::Migration
  def change
    add_belongs_to :users, :ticket
  end
end
