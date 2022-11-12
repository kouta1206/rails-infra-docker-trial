class Movie < ApplicationRecord
  has_many :genres, through: :movie_genres
  has_many :movie_genres
  has_many :starrings, through: :movie_starrings
  has_many :movie_starrings
  belongs_to :user

  with_options presence: true do
    validates :title
    validates :director
  end
end
