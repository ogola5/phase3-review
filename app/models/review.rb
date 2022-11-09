class Review < ActiveRecord::Base
    belongs_to :user
    belongs_to :product
    def print_reviews
        puts "Review for #{self.product.name} by #{self.product.name}: #{self.star_rating}. #{self.comment}"
    end
end