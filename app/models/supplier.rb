class Supplier < ApplicationRecord
  def products
    Product.where(supplier_id: id) #adds association
  end
end
