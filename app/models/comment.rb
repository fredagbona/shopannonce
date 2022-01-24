class Comment < ApplicationRecord
    belongs_to :advert
    validates :content, presence: true
    validates :name, presence: true
    validates :email, presence: true
end
