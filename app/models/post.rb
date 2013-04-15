class Post
  include Mongoid::Document
  include Mongoid::Timestamps

  has_and_belongs_to_many :tags
  belongs_to :cateory
  belongs_to :admin

  field :title
  field :body

  auto_increment :_id

  scope :recent, order_by(created_at: :desc).limit(5)
end
