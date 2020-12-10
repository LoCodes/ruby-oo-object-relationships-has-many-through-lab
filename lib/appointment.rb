# Appointment
#   .all
#     knows about all appointments that have been created 
#   #new
#     initializes with a date, patient, and doctor 
#   #patient
#     belongs to a patient
#   #doctor
#     belongs to a doctor 


class Appointment 

    attr_accessor :date, :patient, :doctor

    @@all = []

    def initialize(date, patient, doctor)
        @date = date
        @patient = patient 
        @doctor = doctor
        save
    end  

    def save
        @@all << self
    end 

    def self.all
        @@all
    end 
end 
