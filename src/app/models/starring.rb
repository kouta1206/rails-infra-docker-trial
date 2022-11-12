class Starring < ApplicationRecord
  has_many :movies, through: :movie_starrings
  has_many :movie_starrings
  accepts_nested_attributes_for :movie_starrings
end
