class AddSecretUrlColumnToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :secret_url, :string
  end
end
