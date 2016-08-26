# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

mary = User.create(first_name: "Mary", last_name: "Maker")
chris = User.create(first_name: "Chris", last_name: "Creator")
bob = User.create(first_name: "Bob", last_name: "Backer")

transporter = mary.campaigns.create(title: "Transporter Pad", goal: 1000000)
starship = chris.campaigns.create(title: "Starship", goal: 1000000)

bob.subscriptions.create(campaign_id: transporter.id)
bob.contributions.create(campaign_id: starship.id, amount: 1000)

update1 = Update.create(html: "<h1>First Human Transport Was a Success</h1>")
update1.activity.update_attribute(:campaign_id, 1)

comment1 = Comment.create(text: "Can't wait to get mine", user_id: chris.id)
comment1.activity.update_attribute(:campaign_id, 1)

milestone1 = Milestone.create(amount_reached: 6000)
milestone1.activity.update_attribute(:campaign_id, 2)
