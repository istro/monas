class CreateSubscribers < ActiveRecord::Migration
  def change
    create_table :subscribers do |t|
      t.string :name
      t.string :email
      t.string :favorite_recipe

      t.timestamps
    end
  end
end
