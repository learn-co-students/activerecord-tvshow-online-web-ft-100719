class Show < ActiveRecord::Base  

    # ::highest_rating
#     returns the highest rating of all the TV shows 
    def Show::highest_rating
        Show.maximum("rating")
    end 

#   ::most_popular_show
#     returns the tv show with the highest rating 
    def Show::most_popular_show
        Show.order(rating: :desc).first
    end 

#   ::lowest_rating
#     returns the lowest rating of all the TV shows 
    def Show::lowest_rating
        Show.minimum("rating")    
    end 

#   ::least_popular_show
#     returns the tv show with the lowest rating 
    def Show::least_popular_show
        Show.order(:rating).first    
    end 
#   ::ratings_sum
#     returns the sum of all the ratings of all the tv shows 
    def Show::ratings_sum
        Show.sum("rating")        
    end 
#   ::popular_shows
#     returns an array of all of the shows with a rating above 5 
    def Show::popular_shows
        Show.where("rating > 5")             
    end 
#   ::shows_by_alphabetical_order
#     returns an array of all of the shows, listed in alphabetical order 
    def Show::shows_by_alphabetical_order
        Show.order("name")                
    end

end