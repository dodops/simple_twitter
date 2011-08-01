Factory.define :user do |user|
  user.name                     "Eliel"
  user.email                    "eliel_po@gmail.com"
  user.password                 "randon"
  user.password_confirmation    "randon"
end

Factory.sequence :email do |n|
  "person-#{n}@example.com"
end
