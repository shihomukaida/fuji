class AddMobilePhoneToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :mobile_phone, :string
  end
end
