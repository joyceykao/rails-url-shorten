class Address < ApplicationRecord
  validates :url, presence: true
  validates :short, uniqueness: true

  def shorten
    Rails.application.routes.url_helpers.short_url(short: self.short)
  end
end
