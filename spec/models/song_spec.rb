require 'rails_helper'

RSpec.describe Song, type: :model do
#association test without Shoulda
  describe "association with artist" do
    let(:artist) { create :artist }

    it "belongs to an artist" do
      song = artist.songs.new

      expect(song.artist).to eq(artist)
    end
  end
#association test with Shoulda
  describe "association with artist" do
    it { is_expected.to belong_to :artist}
  end
end
