class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    # def avg_rating
    #     ratings = []
    #     Appearance.all.each do |appearance|
    #         if appearance.episode == self
    #             ratings << appearance.rating
    #         end
    #     ratings.sum / ratings.length
    #     end
    # end

end
