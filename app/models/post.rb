class Post < ActiveRecord::Base
  acts_as_commontable
  has_many :comments
  #This validates presence of title, and makes sure that the length is not more than 140 words
  validates :title, presence: true, length: {maximum: 140}
  #This validates presence of body
  validates :body, presence: true

  include PgSearch
  multisearchable :against => [:title, :body]

end