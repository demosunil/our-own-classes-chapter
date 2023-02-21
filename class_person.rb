# Define a class Person with:

#  - An attribute first_name
#  - An attribute last_name
#  - An attribute birthdate (we just assign a string to this attribute, e.g. "April 19, 1987")
#  - An instance method, full_name, that puts first_name and last_name together
#  - An instance method, age, that calculates the number of years between today and birthdate

class Person
  
end

# Test your instance methods by adding to the end of this file:

#  new_person = Person.new
#  new_person.first_name = "Joe"
#  new_person.last_name = "Mama"
#  new_person.full_name 
# Output:
#=>  "Joe Mama"

#  other_person = Person.new
#  other_person.birthdate = "April 19, 1987"
#  other_person.age
# Output:
#=>  45
class Person
  attr_accessor :first_name
  attr_accessor :last_name
  require("date")
  attr_accessor :birthdate
  def full_name
    return self.first_name + " " + self.last_name
  end
  

  def age
    dob = Date.parse(self.birthdate)
    now = Date.today
    age_in_days = now - dob
    age_in_years = age_in_days / 365

    return age_in_years.to_i
  end
end
hs = Person.new
hs.first_name = "Sunil"
hs.last_name = "Patel"
 p hs.full_name
hs = Person.new
hs.birthdate = "April 19, 1987"

 p hs.age # => 32, as of this writing


