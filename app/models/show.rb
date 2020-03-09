class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  
  def actors_list
   array=[]
   array_full_name =self.characters.map {|character| character.name}
   array_of_shows = self.show.map {|shows| shows.name}
   show = array_of_characters.concat array_of_shows
    shows << show.join(" - ")
    shows
   
  end 
end