class Portfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies, reject_if: lambda { |attrs| attrs['name'].blank? }

  include Placeholder
  validates_presence_of :title, :body

  after_initialize :set_defaults

  mount_uploader :thumb_image, PortfolioUploader
  mount_uploader :main_image, PortfolioUploader

  # This is the samething as a scope like line | scope :angular_portfolio_items |.
  # def self.angular
  #   where(subtitle: 'Angular')
  # end

  scope :angular_portfolio_items, -> { where(subtitle: 'Angular') }
  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }
  scope :by_position, -> { order('position ASC') }

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
  end
end

# What does self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
# or the '||=' mean?
# if self.main_image == nil
#   self.main_image = 'http://via.placeholder.com/600x400'
# end
