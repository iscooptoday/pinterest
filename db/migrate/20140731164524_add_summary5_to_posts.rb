class AddSummary5ToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :summary5, :text
  end
end
