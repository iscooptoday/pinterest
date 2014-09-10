class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :description
      t.string :url

      t.timestamps
    end
  end
end
