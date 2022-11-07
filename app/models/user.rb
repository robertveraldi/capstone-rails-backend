class User < ApplicationRecord
  has_many :exercises
  has_many :routines
end
