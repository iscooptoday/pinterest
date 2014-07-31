class AddSummary2ToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :summary2, :text
  end
end
