class Departament < ApplicationRecord
  has_and_belongs_to_many :medics
  has_many :price
end