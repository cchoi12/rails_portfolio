class Portfolio < ApplicationRecord
  validates_presence_of :title, :body

  # This is the samething as a scope like line #9.
  # def self.angular
  #   where(subtitle: 'Angular')
  # end

  scope :angular_portfolio_items, -> { where(subtitle: 'Angular') }
  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }
end
