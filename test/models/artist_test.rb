require 'test_helper'

class ArtistTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "short_bio must return empty string when no bio present" do
    artist = Artist.new
    artist.bio = nil
    assert artist.short_bio ==  ""
  end
end
