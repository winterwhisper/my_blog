class Admin
  include Mongoid::Document
  include Mongoid::Timestamps

  has_many :posts

  field :name

  auto_increment :_id
end
