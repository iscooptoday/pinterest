class AddSummary4ToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :summary4, :text
  end
end
