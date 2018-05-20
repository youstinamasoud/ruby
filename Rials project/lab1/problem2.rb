require 'date'

class Age
@@fname="Youstina"
@@lname="Masoud"
@@age=0

def self.age(bd)
  r=Date.today.month
  bd=Date.parse(bd)
  @@age = Date.today.year - bd.year
  if r < bd.month
    @@age -= 1
  end

  return @@fname +" "+ @@lname +" "+ @@age.to_s 
end

end

puts Age.age("20-1-1993")