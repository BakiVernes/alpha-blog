class Category < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true, length: { minimum: 4, maximum: 20 }
end