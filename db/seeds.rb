# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# There has to be a better way to do this....


u1 = Users.create(username: 'user1', password_digest: 'password')
u2 = Users.create(username: 'user2', password_digest: 'password')
u3 = Users.create(username: 'user3', password_digest: 'password')
u4 = Users.create(username: 'user4', password_digest: 'password')
u5 = Users.create(username: 'user5', password_digest: 'password')
u6 = Users.create(username: 'user6', password_digest: 'password')


p1 = Posts.create(title: 'Check this out!', body: 'I made this in Rails!', image: 'http://www.newpeaksolutions.com/wp-content/uploads/2016/04/ruby-on-rails.jpg', votes: 6, users_id: u1.id)
p2 = Posts.create(title: 'What is this??', body: 'Rails is cool and weird', image: 'http://www.mondo.com/wp-content/uploads/2016/05/ruby-on-rails.jpg', votes: 8, users_id: u1.id)
p3 = Posts.create(title: 'Woah...', body: 'Rails sure is smart!', image: 'https://3.bp.blogspot.com/-_fUmnw-5cXs/VYewQIB7lUI/AAAAAAAAAUQ/5RrxBwpzSEc/w800-h800/ruby_rails_is_love.png', votes: 2, users_id: u2.id)
p4 = Posts.create(title: 'Futurama', body: 'It has a lot of funny episodes', image: 'http://1.images.comedycentral.com/images/shows/Futurama/Videos/season_1/futurama_01_0102_zoidberg_physical_640x360.jpg?quality=0.85&width=295&height=165&crop=true', votes: 2, users_id: u2.id)
p5 = Posts.create(title: 'Dogs!', body: 'What a wonderful world of puppies!', image: 'http://cdn3-www.dogtime.com/assets/uploads/gallery/30-impossibly-cute-puppies/impossibly-cute-puppy-30.jpg', votes: 10, users_id: u3.id)
p6 = Posts.create(title: 'Overwatch', body: 'It is extremely overrated', image: 'https://pbs.twimg.com/profile_images/633856419490480128/58pBUIoE_400x400.png', votes: 34, users_id: u4.id)
p7 = Posts.create(title: 'Play this instead', body: 'Destiny yo..', image: 'https://upload.wikimedia.org/wikipedia/en/thumb/b/be/Destiny_box_art.png/250px-Destiny_box_art.png', votes: 4, users_id: u5.id)
p8 = Posts.create(title: 'Node is cooler', body: 'See title', image: 'https://node-os.com/images/nodejs.png', votes: -1, users_id: u6.id)

c1 = Comments.create(content: 'Wow!', votes: 2, users_id: u2.id, posts_id: p1.id)
c2 = Comments.create(content: 'really?', votes: 21, users_id: u1.id, posts_id: p1.id)
c3 = Comments.create(content: 'what', votes: 1, users_id: u6.id, posts_id: p2.id)
c4 = Comments.create(content: 'yo', votes: 7, users_id: u3.id, posts_id: p2.id)
c5 = Comments.create(content: 'comment', votes: 8, users_id: u2.id, posts_id: p3.id)
c6 = Comments.create(content: 'weird', votes: 3, users_id: u1.id, posts_id: p3.id)
c7 = Comments.create(content: 'why', votes: 12, users_id: u5.id, posts_id: p4.id)
c8 = Comments.create(content: 'hot fire', votes: 42, users_id: u6.id, posts_id: p5.id)
c9 = Comments.create(content: 'what are you thinking??', votes: 6, users_id: u5.id, posts_id: p6.id)
c10 = Comments.create(content: 'this is boring', votes: -2, users_id: u4.id, posts_id: p7.id)
c11 = Comments.create(content: 'what happened??', votes: 52, users_id: u4.id, posts_id: p8.id)
c12 = Comments.create(content: 'gogogogo', votes: 8, users_id: u1.id, posts_id: p8.id)
c13 = Comments.create(content: 'great meme', votes: 2, users_id: u2.id, posts_id: p7.id)
c14 = Comments.create(content: 'sick', votes: 1, users_id: u3.id, posts_id: p5.id)
