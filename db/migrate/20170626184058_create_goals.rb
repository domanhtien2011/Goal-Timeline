class CreateGoals < ActiveRecord::Migration[5.1]
  def change
		drop_table 'goals' if ActiveRecord::Base.connection.table_exists? 'goals'

    create_table :goals do |t|
      t.string :name
      t.text :why
      t.string :length
      t.integer :user_id, index: true

      t.timestamps
    end
  end
end
