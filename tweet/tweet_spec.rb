require "spec_helper"
require "./tweet.rb"

describe Tweet do
	it 'has a status of "Nom nom nom"' do
		tw = Tweet.new(status: "Nom nom nom")
		tw.status.should == "Nom nom nom"
	end

	it 'without a leading @ symbol should be public' do
		tweet = Tweet.new(status: "Nom nom nom")
		tweet.should be_public
	end

	it 'truncates the status to 140 characters' do
		tweet = Tweet.new(status: "Nom nom nom"*100)
		tweet.status.length.should be <= 140
	end

end