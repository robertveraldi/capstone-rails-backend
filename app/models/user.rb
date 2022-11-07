class User < ApplicationRecord
  has_many :exercises
  has_many :routines
  validates :email, presence: true, uniqueness: true
end
