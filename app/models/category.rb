class Category < ApplicationRecord
    validates :name_type, presence: true, uniqueness: true
    has_many :wikis
end
