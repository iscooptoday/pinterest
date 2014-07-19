class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :summary
      t.string :source

      t.timestamps
    end
  end
end
