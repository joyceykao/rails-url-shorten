class Address < ApplicationRecord
  validates :url, presence: true
  validates :url, format: URI.regexp(%w[http https])
  validates :short, presence: true
  validates :short, uniqueness: true
  validates :short, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
end
