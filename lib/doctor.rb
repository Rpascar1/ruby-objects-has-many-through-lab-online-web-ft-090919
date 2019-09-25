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
    Appointment.new()
    
  end
  
  
  
  def patients
    Patient.all.collect {|patient| Patient.doctor == self}
  end
  

  
end