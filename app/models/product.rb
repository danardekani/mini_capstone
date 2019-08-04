class Product < ApplicationRecord
  has_many :carted_products
  has_many :orders, through: :carted_products 
  # has_many :orders
  belongs_to :supplier, optional: true
  has_many :images
  has_many :category_products

  validates :price, length: {in: 0..100}
  validates :name, presence: true 
  validates :name, uniqueness: true 
  validates :price, presence: true
  validates :price, numericality: {greater_than: 0}
  validates :description, presence: true 
  validates :description, length: {in: 10..500 }

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  def is_discounted
    if price < 10
      return true 
    else  
      return false
    end
  end

  def tax
    tax_rate = 0.09
    price * tax_rate
  end

  def total
    price * tax
  end

  def image_url
    if images.length > 0
      images[0].url
    else
      "https://www.hutchinsontires.com/helpers/img/no_image.jpg"
    end
  end
end