class Track
  attr_reader :name,
              :artist,
              :album,
              :image_path,
              :track_id

  def initialize(name, artist, album, image_path, track_id)
    @name = name
    @artist = artist
    @album = album
    @image_path = image_path
    @track_id = track_id
  end

  def image
    if @image_path != "blank"
      return @image_path["url"]
    else
      return 'capybarawontseeitanyway.jpg'
    end
  end
  def params
    {
      :name => @name,
      :seed => @track_id,
      :type => "Track"
    }
  end
end
