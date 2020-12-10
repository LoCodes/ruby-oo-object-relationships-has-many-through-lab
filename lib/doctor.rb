# Doctor
#   #name
#     has a name
#   #new
#     initializes with a name and adds itself to an array of all doctors
#   #appointments
#    returns all appointments associated with this Doctor
#   #new_appointment
#    given a date and a patient, creates a new appointment
#   #patients
#     has many patients, through appointments




class Doctor

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        save
    end 

    def save
        @@all << self
    end 

    def self.all
        @@all
    end 

    #   #appointments
    #   returns all appointments associated with this Doctor

    def appointments
        Appointment.all.select {|appointment| appointment.doctor}
    end 


    # Appointment
    #  #doctor
    #  belongs to a doctor


    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end 


#   #patients
#   has many patients, through appointments
    
    def patients 
        appointments.collect {|appointment| appointment.patient}
    end 
end 
