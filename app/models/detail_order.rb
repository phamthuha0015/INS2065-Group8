class DetailOrder < ApplicationRecord
  belongs_to :order
  belongs_to :note
end
