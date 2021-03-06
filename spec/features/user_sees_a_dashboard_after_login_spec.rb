require 'rails_helper'

feature "An authenticated user can view their dashboard" do
  it "displays top 20 artists, top 20 tracks for a user,
  provides and links to playlist creation" do
  visit spotify_login_path

  visit top_artists_path
  expect(page).to have_css('#top_artist_1')
  expect(page).to have_css('.top_artist')
  visit top_tracks_path
  expect(page).to have_css('.top_track')
  expect(page).to have_css('#top_track_7')
  expect(page).to have_link('Create Playlist')
  end
end
