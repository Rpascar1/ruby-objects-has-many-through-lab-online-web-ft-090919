class Doctor
  
  @@all = []
  
  attr_accessor :name
  

  def initialize(name)
  @name = name
  @@all << self
  end

  def self.all
  @@all
  end
  
  def new_appointment(patient,date)
    Appointment.new(patient,self,date)
  end
    
  def patients
    Appointment.all.collect {|patient| patient.doctor}
  end
  
  def appointments
    Appointment.all.select {|appointment|appointment.doctor == self}
  end
    
      def new_song(name,genre)
    Song.new(name,self,genre)
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end

  def genres
    songs.collect {|song| song.genre}
  end
  
    
    
    
    

  
end