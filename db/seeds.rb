# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
friends = Friend.create([
  {full_name: "Nemwel Boniface", phone: "+254754135545", twitter: "@nemwel_bonie", email: "nemwelboniface@outlook.com", street_address: "150 Sarangetti Lane", city: "Nairobi City", state_province: "Nairobi", country: "Kenya", postal_code: "00501", available_to_party: "yes"},
  {full_name: "Cecilia Chapman", phone: "+12575637401", twitter: "@cici_chapman", email: "c.chapman@chapman.com", street_address: "711-2880 Nulla St.", city: "Mankato", state_province: "Mississippi", country: "United States", postal_code: "96522", available_to_party: "yes"},
  {full_name: "Iris Watson", phone: "+13725872335", twitter: "@iris_whatsup", email: "iriswatson123@gmail.com", street_address: "P.O. Box 283 8562 Fusce Rd", city: "Frederick", state_province: "Nebraska", country: "United States", postal_code: "20620", available_to_party: "yes"},
  {full_name: "Celeste Slater", phone: "+17867138616", twitter: "@cele_slater", email: "cslater@celesetfasions.com", street_address: "606-3727 Ullamcorper Street", city: "Roseville", state_province: "New Hampshire", country: "United States", postal_code: "11523", available_to_party: "yes"}
])
