class Product < ApplicationRecord
    validates :name,  presence: true, length: { maximum: 40 }, uniqueness: { case_sensitive: false }
    validates :ingredient, presence: true
end
