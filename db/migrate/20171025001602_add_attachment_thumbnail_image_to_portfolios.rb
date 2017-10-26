class AddAttachmentThumbnailImageToPortfolios < ActiveRecord::Migration[5.1]
  def self.up
    change_table :portfolios do |t|
      t.attachment :thumbnail_image
    end
  end

  def self.down
    remove_attachment :portfolios, :thumbnail_image
  end
end
