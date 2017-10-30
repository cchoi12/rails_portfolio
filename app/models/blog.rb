class Blog < ApplicationRecord
  belongs_to :topic

  has_many :comments, dependent: :destroy

  extend FriendlyId

  enum status: {draft: 0, published: 1}
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body

  def self.special_blog
    all
  end

  def self.featured_blog
    limit(2)
  end
end
