class Post
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :body,  type: String
  field :content,  type: String
end
