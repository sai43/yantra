class Product < ApplicationRecord
  belongs_to :category

  validates_uniqueness_of :title
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/logo.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
