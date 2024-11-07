class Category < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :category_type, presence: true 
  enum category_type: { receita: 'Receita', despesa: 'Despesa'}
  
end
