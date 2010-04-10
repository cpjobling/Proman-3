require 'machinist/active_record'
require 'sham'

Sham.login { InternetForgery.user_name }
Sham.password { BasicForgery.password }
Sham.email { InternetForgery.email_address }

User.blueprint do
  pwd = Sham.password
  login
  email
  password { pwd }
  password_confirmation { pwd }
  title { 'Dr' }
  first_name { 'Christopher' }
  last_name { 'Jobling' }
  initials { 'P.' }
  terms { true }
  staff_or_student_number { 123456 }
  known_as { 'Chris' }
end
