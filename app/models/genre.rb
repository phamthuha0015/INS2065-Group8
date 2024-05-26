class Genre < ApplicationRecord
    has_many :notes

    validates_uniqueness_of :name
    validates_presence_of :name
end
