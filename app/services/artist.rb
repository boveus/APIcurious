class Artist
  attr_reader :image,
              :name,
              :image_path,
              :genres,
              :artist_id

  def initialize(name, image_path, genres, artist_id)
    @name = name
    @image_path = image_path
    @genres = genres
    @artist_id = artist_id
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
      :seed => @artist_id,
      :type => "Artist"
    }
  end
end
