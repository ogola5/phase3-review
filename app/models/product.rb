class Product < ActiveRecord::Base
    has_many :reviews
    has_many : users,through: :reviews
    
    def drop_review(user,star_rating,comments)
        Review.create(product:self,user:user,star_rating:star_rating,comment:comments)

    end
    def print_all_reviews
        self.review.each do |review|
            puts "Review  #{review.product.name} #{review.user.name} #{review.star_rating} #{review.comment}"
        end
        nil
    end
end