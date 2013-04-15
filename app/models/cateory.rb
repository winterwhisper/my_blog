class Cateory
  include Mongoid::Document
  include Mongoid::Timestamps

  has_one :post

  field :name

  auto_increment :_id
end
