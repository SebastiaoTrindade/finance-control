class Category < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :category_type, presence: true, inclusion: { in: ['Despesa', 'Receita']}
  
  
  
  
end
