class ChangeTypeForBodyOfPosts < ActiveRecord::Migration[5.1]
  def change
    change_column :posts, :body, :text
  end
end
