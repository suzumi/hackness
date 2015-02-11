class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :name
      t.text :url
      t.text :feed

      t.timestamps null: false
    end
  end
end
