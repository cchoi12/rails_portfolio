class Portfolio < ApplicationRecord
  include Placeholder

  has_many :technologies

  has_attached_file :show_image, styles: { medium: "300x300>", thumb: "200x75>" }, default_url: 'http://via.placeholder.com/600x400'
  has_attached_file :thumbnail_image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: 'http://via.placeholder.com/200x175'

  accepts_nested_attributes_for :technologies,
                                allow_destroy: true,
                                reject_if: lambda { |attrs| attrs['name'].blank? }

  validates_presence_of :title, :body
  validates_attachment_content_type :show_image, content_type: /\Aimage\/.*\z/
  validates_attachment_content_type :thumbnail_image, content_type: /\Aimage\/.*\z/

  scope :angular_portfolio_items, -> { where(subtitle: 'Angular') }
  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }
  scope :by_position, -> { order('position ASC') }
end

# What does self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
# or the '||=' mean?
# if self.main_image == nil
#   self.main_image = 'http://via.placeholder.com/600x400'
# end

# This is the samething as a scope like line | scope :angular_portfolio_items |.
# def self.angular
#   where(subtitle: 'Angular')
# end
