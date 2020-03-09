class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  
  def actors_list
   array=[]
   array_full_name =self.actors.map {|actor| actor.name}
   array_of_shows = self.shows.map {|show| show.name}
   show = array_full_name.concat array_of_shows
    shows << show.join(" - ")
    shows
   
  end 
end