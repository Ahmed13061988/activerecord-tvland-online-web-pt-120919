class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  
  def full_name
    name = "#{self.first_name} #{self.last_name}"
  end

  
  def actors_list
   array=[]
   array_full_name =self.actors.map {|actor| actor.full_name}
   show = array_full_name
    array << show.join(" - ")
    array
   
  end 
end