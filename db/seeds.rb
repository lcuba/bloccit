require 'random_data'

#Create Users
5.times do
    User.create!(
        name: RandomData.random_name,
        email: RandomData.random_email,
        password: RandomData.random_sentence
    )
end
users = User.all

#Create Topics
15.times do
    Topic.create!(
        name: RandomData.random_sentence,
        description: RandomData.random_paragraph
    )
end
topics = Topic.all

#Create posts
50.times do
    Post.create!(
        user: users.sample,
        topic: topics.sample,
        title: RandomData.random_sentence,
        body: RandomData.random_paragraph
    )
end

posts = Post.all

#Create comments
100.times do
    Comment.create!(
        user: users.sample,
        post: posts.sample,
        body: RandomData.random_paragraph
    )
end

#Create Questions
100.times do
    Question.create!(
        title: RandomData.random_sentence,
        body: RandomData.random_paragraph,
        resolved: false
    )
end

puts "#{Post.count}"
Post.find_or_create_by(title: "example title", body: "example body")
puts "#{Post.count}"

# Create an admin user
admin = User.create!(
    name: 'Admin User',
    email: 'admin@example.com',
    password: 'helloworld',
    role: 'admin'
)

# Create a member
member = User.create!(
    name: 'Member User',
    email: 'member@example.com',
    password: 'helloworld'
)

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
