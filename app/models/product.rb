class Product < ApplicationRecord
    validates :name, :price, :description, presence: true
    belongs_to :category

    has_many :movements, dependent: :destroy
    accepts_nested_attributes_for :movements,
        reject_if: proc{ |attr| attr['description'].blank? }
end
