class SupplierOrder < ApplicationRecord
  belongs_to :supplier
  belongs_to :note
end
