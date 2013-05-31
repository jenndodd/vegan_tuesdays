class Post < ActiveRecord::Base
  attr_accessible :content, :subtitle, :title
  validates_presence_of :title, :content
  validates_uniqueness_of :title
  has_many :comments, :dependent => :destroy
end
