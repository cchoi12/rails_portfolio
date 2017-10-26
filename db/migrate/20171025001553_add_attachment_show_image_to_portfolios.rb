class AddAttachmentShowImageToPortfolios < ActiveRecord::Migration[5.1]
  def self.up
    change_table :portfolios do |t|
      t.attachment :show_image
    end
  end

  def self.down
    remove_attachment :portfolios, :show_image
  end
end
