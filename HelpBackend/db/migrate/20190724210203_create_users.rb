class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :credit_card
      t.string :password
      t.string :username
    end
  end
end
