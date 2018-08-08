class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :title, uniqeness: {
    scope: [:release_year,:artist_name]
    message: "cannot be repeated by the same artist in the same year"
  }

end
