class Category < ApplicationRecord
    has_ancestry
    has_and_belongs_to_many :products

    scope :childs_for_me, -> (childs){ where('user_id IN (?)', childs) }
    scope :parents_for_me, -> (parents){ where('user_id IN (?)', childs) }
    
end

