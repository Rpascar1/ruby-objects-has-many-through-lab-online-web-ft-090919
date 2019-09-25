class Appointment
  
  @@all = []
  
  attr_accessor :name, patient, doctor 
  def initilaize()
  
  

  
  attr_accessor :name, :genre, :artist
  
  def initialize(name, artist, genre)
  @name = name
  @@all << self
  @genre = genre
  @artist = artist
  end

  def self.all
  @@all
  end




end
  
  
end