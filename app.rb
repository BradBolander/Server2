require 'bundler'
Bundler.require()

class Song
  def initialize (name, release_year, artist)
    @name = name
    @release_year = release_year
    @artist = artist
  end

  def get_name
    @name
  end

  def get_release_year
    @release_year
  end

  def get_artist
    @artist
  end
end

song1 = Song.new('Miracle','2015','Donnie Trumpet and The Social Experiment')
song2 = Song.new('Sleepy Dinosaur', '2008', 'Flying Lotus')
song3 = Song.new('Little Secrets', '2009', 'Passion Pit')

get '/' do
  {:message => 'Try /api/miracle, /api/sleepy-dinosaur, and api//little-secrets !' }.to_json
end

get '/api/miracle' do
  {:name => song1.get_name, :release_year => song1.get_release_year, :artist => song1.get_artist}.to_json
end

get '/api/sleepy-dinosaur' do
  {:name => song2.get_name, :release_year => song2.get_release_year, :artist => song2.get_artist}.to_json
end

get '/api/little-secrets' do
  {:name => song3.get_name, :release_year => song3.get_release_year, :artist => song3.get_artist}.to_json
end

get '/kung-fu-hustle' do
  {:name => movie3.get_name, :release_year => movie3.get_release_year, :description => movie3.get_description}.to_json
end
