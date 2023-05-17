class Destination < ApplicationRecord
    has_many :creators, :dependent => :destroy

    #validation: all elements must be present
    validates :name, :image, :video, :description, presence: true

end
