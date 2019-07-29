class CreateCampaigns < ActiveRecord::Migration[5.2]
  def change
    create_table :campaigns do |t|
      t.string :title
      t.string :image
      t.integer :goal
      t.string :description
      t.integer :raised_donation
      t.belongs_to :user, foreign_key: true
      t.string :end_date
      t.boolean :active

      t.timestamps
    end
  end
end
