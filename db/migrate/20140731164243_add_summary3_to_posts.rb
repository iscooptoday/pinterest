class AddSummary3ToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :summary3, :text
  end
end
