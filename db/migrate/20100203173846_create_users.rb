class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users, :primary_key => :id do |t|
      t.string :u_name
      t.string :password
      t.string :email_id

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
