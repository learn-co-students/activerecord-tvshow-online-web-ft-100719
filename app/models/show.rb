class Show  < ActiveRecord::Base
    def self.highest_rating
        #this method should return the highest value in the ratings column. 
        #hint: if there is a minimum Active Record method, might there be a maximum method?
        highest_rated = Show.maximum("rating")
    end
    
    def self.most_popular_show
    #    this method should return the show with the highest rating. 
    #   hint: use the highest_rating method as a helper method.
        Show.find_by(rating: Show.highest_rating)

    end
    
    def self.lowest_rating
        #returns the lowest value in the ratings column.
        lowest_rated = Show.minimum("rating")
    end
    
    def self.least_popular_show
        #returns the show with the lowest rating.
        Show.find_by(rating: Show.lowest_rating)
        #lowest_rated = Show.lowest_rating
        
    end
    
    def self.ratings_sum
        #returns the sum of all of the ratings.
        Show.sum("rating")
    end
    
    def self.popular_shows
        #returns an array of all of the shows that have a rating greater than 5. 
        #hint: use the where Active Record method.
        Show.where("rating > 5")
        
    end
    
    def self.shows_by_alphabetical_order
        #returns an array of all of the shows sorted by alphabetical order according to their names. 
        #hint: use the order Active Record method.
        Show.order(:name)
    end  
end