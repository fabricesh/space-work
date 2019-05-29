class Space < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  has_many :reviews, dependent: :destroy
  geocoded_by :localisation
  after_validation :geocode, if: :will_save_change_to_localisation?
  mount_uploader :photo, PhotoUploader
  # validates :title, :localisation, :availabilities, :price, :space_type, :capacity, presence: true
  # GARDER cette ligne validates sinon formulaire en 3 etapes ne marchera pas
  validates :localisation, :space_type, :capacity, presence: true
  # Search with Algolia
  include AlgoliaSearch

  algoliasearch do
    # all attributes will be sent
  end

  def average_stars
    if self.reviews.present?
      array = self.reviews.map do |review|
        review.stars
      end
      x  = array.sum.fdiv(array.length)
      rouded_rating = (x * 2.0).round / 2.0
    else
      return 0
    end
  end

  def number_of_empty_star
    5 - average_stars.round(half: :up)
  end

  def number_of_half_star
    # binding.pry
    if average_stars % 1 == 0.5
     1
    else
     0
    end

  end

  def number_of_full_star
    average_stars.truncate
  end
end

