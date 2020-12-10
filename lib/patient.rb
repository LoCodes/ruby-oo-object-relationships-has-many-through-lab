# Patient
#   #new
#     initializes with a name 
#   #new_appointment
#     given a date and doctor, creates a new appointment belonging to that patient
#   .all
#     knows about all patients 
#   #appointments
#     returns all appointments associated with this Patient 
#   #doctors
#     has many doctors through appointments 


class Patient 

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


    # Appointment
    #   #patient
    #   belongs to a patient

    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end 

    #   #appointments
    #   returns all appointments associated with this Patient

    def appointments
        Appointment.all.select {|appointment| appointment.patient == self}
    end 

    #   #doctors
    #   has many doctors through appointments 

    def doctors 
        appointments.collect {|appointment| appointment.doctor}
    end 

end