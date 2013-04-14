class Post
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title
  field :body

  auto_increment :_id

  scope :recent, order_by(created_at: :desc).limit(5)
end
