class Flat < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  # Si nous avons pas exemple plusieurs champs pour l'adresse (rue, ville, cp)
  # geocoded_by :address_recomposed

  # def address_recomposed
  #   self.street + self.city + self.street_number
  # end
end
