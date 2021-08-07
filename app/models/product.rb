class Product < ApplicationRecord
    has_and_belongs_to_many :categories
    has_many :variants #, class_name: "variant", foreign_key: "reference_id"
end
