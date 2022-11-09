class Supplier < ApplicationRecord
  def product
    Product.where(supplier_id: id) #adds association
  end
end
