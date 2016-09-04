# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Profile.destroy_all

1.upto(100) do |i|
	p = Profile.new
	p.name = "김택민#{rand(100)}"
	p.email = "sw#{rand(100)}@gmail.com"
	p.phone_number = "010-0000-%04i" % rand(1000)
	p.seat_number = i
	p.facebook = "fb.com/%06i" % rand(100000)
	p.twitter = "https://twitter.com/%4i" % rand(1000)
	p.github = "https://github.com/%4i" % rand(1000)
	p.blog = "https://blog.me/%4i" % rand(1000)
	p.save
end
