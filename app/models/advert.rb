class Advert < ApplicationRecord
    mount_uploader :image, AvatarUploader
    mount_uploader :image2, AvatarUploader
    mount_uploader :image3, AvatarUploader
    mount_uploader :image4, AvatarUploader

    belongs_to :user, optional: true

 validates :title, presence: true
  validates :localisation, presence: true
  validates :description, presence: true
  validates :image, presence: true

    enum category: {
        'Informatique & multimédia': 0,
        Immobilier: 1,
        'Maison & Jardin': 2,
        'Voitures et Motos': 3,
        'Habillement et Bien-être': 4,
        'Loisirs et Divertissement': 5,
        Emploi: 6,
        Entreprise: 7,
        Services: 8,
        'Arts & Collection': 9,
        Animaux: 10
    }
    has_many :comments, dependent: :destroy
end
