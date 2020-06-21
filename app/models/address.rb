class Address < ApplicationRecord
  validates :url, presence: true
  validates :url, format: URI.regexp(%w[http https])
  # validates :short, presence: true
  validates :short, uniqueness: true
  validates :short, format: { with: /\A[a-zA-Z0-9]*\z/,
    message: "only allows letters and numbers" }

  before_validation :random_short

  def random_short
    self.short = SecureRandom.alphanumeric(8) if self.short.nil? || self.short.empty?
  end
end
