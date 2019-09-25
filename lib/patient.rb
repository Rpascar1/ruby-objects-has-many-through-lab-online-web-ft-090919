class Patient
  
  @@all = []
  
  attr_accessor :name
  
  def initialize(name)
  @name = name
  @@all << self
  end

  def self.all 
    @@all 
  end
  
  def appintments
    Appointment.all.select {|appointment|appointment == self}
  end
  
  def new_appointment(doctor,date)
    Appointment.new(self,doctor,date)
  end
    


end