class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum(:rating)
  end

  def self.most_popular_show
    rating=Show.highest_rating
    Show.find_by(rating:rating)
  end

  def self.lowest_rating
    Show.minimum(:rating)
  end

  def self.least_popular_show
    rating=Show.lowest_rating
    Show.find_by(rating:rating)
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows
    Show.where("rating > ?", 5)
  end

  def self.shows_by_alphabetical_order
    Show.order(:name)
  end

end



#   describe "::shows_by_alphabetical_order" do
#     it "returns an array of all of the shows, listed in alphabetical order" do
#       expect(Show.shows_by_alphabetical_order).to eq([@fear_the_walking_dead, @law_and_order, @rick_and_morty, @the_cleveland_show])
#     end
#   end
# end
