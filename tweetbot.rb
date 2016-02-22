require 'twitter'

client=Twitter::REST::Client.new do |config|
 config.consumer_key=""
 config.consumer_secret=""
 config.access_token=""
 config.access_token_secret=""
end
x=1
puts "Enter Search Query:"
y=gets.chomp
# y="\""+z+"\""
puts "Tweets matching your keywords:\n"+y+"\n---------"
client.search(y).each do |tweet1|
     puts "\nSearch result no. "+x.to_s+"\n"+tweet1.text
     x=x+1
     client.follow(tweet1.user)
     client.favorite(tweet1)
	end
	puts "\n Followed "+x.to_s+" tweeter"

	# By Shawn NR