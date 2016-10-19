# This will guess the Event class
FactoryGirl.define do
  # default event is 1 day from now with duration of an hour
  factory :event do
    title "Dog walking"
    description  "Walking Ms Pott's Dog"
    starttime 1.days.from_now
    endtime 1.days.from_now + 1.hour
  end

  # This will use the User class (Admin would have been guessed)
  # factory :admin, class: User do
  #   first_name "Admin"
  #   last_name  "User"
  #   admin      true
  # end
end