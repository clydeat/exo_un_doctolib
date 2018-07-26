Appointment.destroy_all
Doctor.destroy_all
Patient.destroy_all

10.times do	
	patient = Patient.create(first_name: Faker::DragonBall.character, last_name: Faker::Zelda.character)
end

10.times do	
	doctor = Doctor.create(first_name: Faker::DrWho.character, last_name: Faker::DrWho.specie, 
	specialty: Faker::Zelda.item, postal_code: Faker::Number.number(5))
end

10.times do	
	appointment = Appointment.create(date: Faker::Date.forward(23), 
	patient_id: Faker::Number.between(Patient.first.id, Patient.last.id), doctor_id: Faker::Number.between(Doctor.first.id, Doctor.last.id))
end
