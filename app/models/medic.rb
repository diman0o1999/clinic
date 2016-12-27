class Medic < ApplicationRecord
  has_many :diploms
  has_and_belongs_to_many :filials
  has_and_belongs_to_many :departaments
  belongs_to :user
end