require 'securerandom'

class Article < ActiveRecord::Base
  belongs_to :category
  validates :title, :body, :email, :price, :author, :category_id, { presence: true }
  # Remember to create a migration!

  def convert_url
    self.secret_url = "#{SecureRandom.hex(5)}"
  end

  def valid_http

  end
end
