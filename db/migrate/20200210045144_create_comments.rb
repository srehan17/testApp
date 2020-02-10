class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :commenter_name
      t.text :comment_body
      t.integer :idea_id

      t.timestamps
    end
  end
end
