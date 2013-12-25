# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
post1 = Post.new
post1.title = "Epic Cheese Cake"
post1.kind = "image"
post1.content = "http://www.craftbrewer.com/siteadmin/pms/images/abbey-malt.jpg"
post1.save

2.times do
	post1.hearts.create
end

post2 = Post.new(title: "ovenly", kind: "text")
post2.content = "During the general wind-down before Autodesk’s annual “week of rest”, I’ve been spending some time this week getting more of my AutoCAD-Kinect integration samples working with the pre-release Kinect for Windows 2.0 device and SDK. Things are actually working pretty well: all samples – barring those that rely on capabilities that aren’t yet part of the SDK – are functional and some have even been enhanced based on new capabilities of the 2.0 device.

For instance, I’ve reworked the “piping” sample (the one that extrudes a circular profile through 3D space) to make use of the distance between the palm and the thumb to define a finer-grained profile than was possible using the distance between two hands.

Here’s an example of some text I was able to draw in 3D using the updated sample, along with the associated point cloud."

post2.save

5.times do
	post2.hearts.create
end
