desc 'Refresh Data'
task refresh_data: :environment do
  puts "Refreshing Data...\nThanks for Waiting!"
  SeedScripts.review_apis
  SeedScripts.upvote_reviews
  SeedScripts.cleanup_oldest_reviews
  puts 'Update Complete!'
end

