require 'faker'

# First ensure we're not destroying real data
unless Rails.env.development? || Rails.env.test?
  puts "This script should only run in development or test environments!"
  exit
end

# Clear existing posts to avoid duplication when re-seeding
puts "Clearing existing posts..."
Post.destroy_all

# Number of posts to create
num_posts = 50

# Status options
statuses = ['draft', 'published', 'archived']

# Categories
categories = ['Technology', 'Health', 'Travel', 'Food', 'Sports', 'Business', 'Entertainment', 'Science']

# Create posts
puts "Creating #{num_posts} posts..."

num_posts.times do |i|
  post = Post.create!(
    title: Faker::Book.title,
    body: Faker::Lorem.paragraphs(number: rand(3..8)).join("\n\n"),
  )
end

puts "\nSeeding completed! Created #{Post.count} posts."

AdminUser.create!(email: 'admin@local.xyz', password: 'password', password_confirmation: 'password') if AdminUser.count.zero?

puts "\n Admin seeded ! use #{}{AdminUser.first.email} and password 'password' to login." if AdminUser.count.zero?
