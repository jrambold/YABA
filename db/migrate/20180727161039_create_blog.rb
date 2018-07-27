class CreateBlog < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :name
      t.references :user, index: true, foreign_key: true
    end
  end
end
