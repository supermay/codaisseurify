require 'rails_helper'

RSpec.describe Artist, type: :model do
#association test without Shoulda
  describe "association with song" do
    let(:artist1) { create :artist }
    let(:artist2) { create :artist }
    let(:song1) { create :song, artist: artist1 }
    let(:song2) { create :song, artist: artist1 }
    let(:song3) { create :song, artist: artist2 }

    it "has many songs" do
      expect(artist1.songs).to include(song1,song2)
    end
    it "doesn't have songs that are not assigned to it" do
      expect(artist1.songs).not_to include(song3)
    end
  end
#association test with Shoulda
  describe "association with song" do
    it { is_expected.to have_many :songs}
  end
end
