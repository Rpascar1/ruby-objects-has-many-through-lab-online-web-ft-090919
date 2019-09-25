class Appointment
  
  @@all = []
  
  attr_accessor :date, :patient, :doctor

  def initialize(patient, doctor, date)
  @patient = patient
  @@all << self
  @doctor = doctor
  @date = date
  end

  def self.all
  @@all
end


end  