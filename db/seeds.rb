# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

frameworks = [
    {
        "name" => "react",
        "vote" => 0
    },
    {
        "name" => "angular",
        "vote" => 0
    },
    {
        "name" => "ember",
        "vote" => 0
    },
    {
        "name" => "vue",
        "vote" => 0
    },
]
voters = [
    {
        "email" => "one@email.com",
        "hasvote" => false
    },
    {
        "email" => "two@email.com",
        "hasvote" => true
    },
]
frameworks.each do |x|
    framework = Framework.create(name: x["name"], vote: x["vote"])
end
voters.each do |x|
    voter = Voter.create(email: x["email"], hasvote: x["hasvote"])
end
