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
  
  def patients
    Patient.all.collect {|patient| Patient.doctor == self}
  end
  
  
  def new_patient(name,genre)
    Song.new(name,self,genre)
  end

  

  def genres
    songs.collect {|song| song.genre}
  end
  
  
end