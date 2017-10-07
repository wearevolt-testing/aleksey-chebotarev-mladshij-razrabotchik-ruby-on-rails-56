class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :body, null: false
      t.integer :author_id
      t.integer :commentable_id
      t.string  :commentable_type

      t.timestamps
    end

    add_index :comments, :author_id
    add_index :comments, [:commentable_id, :commentable_type]
  end
end
