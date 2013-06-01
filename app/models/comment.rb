class Comment < ActiveRecord::Base
  attr_accessible :body, :email, :name, :post_id
  has_many :comments, :dependent => :destroy
  belongs_to :post
end
