# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
references = Reference.create([{ URL: 'http://www.cnn.com', topic: 'Trump', annotation: 'Each citation is followed by a brief (usually about 150 words) descriptive and evaluative paragraph, the annotation' },{ URL: 'http://www.abc.com', topic: 'Cruz', annotation: 'Each citation is followed by a brief (usually about 150 words) descriptive and evaluative paragraph, the annotation' },{ URL: 'http://www.monex.com', topic: 'Gold', annotation: 'Each citation is followed by a brief (usually about 150 words) descriptive and evaluative paragraph, the annotation' },{ URL: 'http://www.kitco.com', topic: 'Gold', annotation: 'Each citation is followed by a brief (usually about 150 words) descriptive and evaluative paragraph, the annotation' },{ URL: 'http://www.facebook.com', topic: 'Bernie', annotation: 'Each citation is followed by a brief (usually about 150 words) descriptive and evaluative paragraph, the annotation' },{ URL: 'http://www.cnn.com', topic: 'Clinton', annotation: 'Each citation is followed by a brief (usually about 150 words) descriptive and evaluative paragraph, the annotation' },{ URL: 'http://www.google.com', topic: 'Bush', annotation: 'Each citation is followed by a brief (usually about 150 words) descriptive and evaluative paragraph, the annotation' },{ URL: 'http://www.donaldjtrump.com', topic: 'Trump', annotation: 'Each citation is followed by a brief (usually about 150 words) descriptive and evaluative paragraph, the annotation' },{ URL: 'http://www.twitter.com', topic: 'Clinton', annotation: 'Each citation is followed by a brief (usually about 150 words) descriptive and evaluative paragraph, the annotation' }])
