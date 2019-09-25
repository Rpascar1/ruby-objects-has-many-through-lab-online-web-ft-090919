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
    patients.all.select {|appointment|appointment.doctor == self}
  end
    
 
    
    

  
end