class SorceryCore < ActiveRecord::Migration[5.1]
  def change
		drop_table 'users' if ActiveRecord::Base.connection.table_exists? 'users'

		create_table :users do |t|
      t.string :email,            :null => false
      t.string :crypted_password
      t.string :salt

      t.timestamps                :null => false
    end

    add_index :users, :email, unique: true
  end
end
