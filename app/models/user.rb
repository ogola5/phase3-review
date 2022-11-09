class User < ActiveRecord::Base
    has_many :reviews
    has_many :product,through: :reviews
    def favorite_product
        favorite_product_id = Review.find_by(star_rating: reviews.maximum(:star_rating)).product_id
        Product.find(favorite_product_id)
    end
    def remove_from_review(product)
        reviews.where(product_id: product.id).delete_all
    end
    
end