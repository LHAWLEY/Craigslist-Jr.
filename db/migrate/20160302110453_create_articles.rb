class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string   :title
      t.string   :body
      t.string   :email
      t.float    :price
      t.string   :author

      t.timestamps
    end
  end
end
