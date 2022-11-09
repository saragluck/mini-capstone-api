class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, length: { in: 10..500 }

  def supplier
    Supplier.find_by(id: supplier_id) #The ID of the supplier (in the supplier table) should match the supplier_id in my products table.
  end

  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end

  def is_discounted?
    price <= 10
  end
end
