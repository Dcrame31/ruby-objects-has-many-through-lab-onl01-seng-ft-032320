class Doctor
  attr_accessor :name
  
  @@all=[]
  
  def initialize(name)
    @name= name
    @@all << save
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end
  
  def appointments
    Appointment.all.select do |appt|
      appt.doctor
  end
  
  def patients
    appointments.map do |appt|
      appt.patient
  end
end
