class Post < ApplicationRecord
  validates :content, {presence: true}
  validates :name,    {presence: true}
end
