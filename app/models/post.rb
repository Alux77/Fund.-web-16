class Post < ActiveRecord::Base
  # Remember to create a migration!
  # has_many :comments
  # validates_associated :comments

  include ActiveModel::Validations
  validates :tittle, :body, :presence => true

end