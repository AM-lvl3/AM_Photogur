class Picture < ActiveRecord::Base

scope :newest_first, -> { order("created_at DESC")}
scope :most_recent_five, -> { newest_first.limit(5)}
scope :created_before, -> (time) {where("created_at < ?", time)}

	def self.created_before(time)
		where("created_at < ?", time)
	end

	def self.artist(artist)
		Picture.where("artist = ?", artist)
	end

	def self.title(title)
		Picture.where("title = ?", title)
	end

	def self.url(url)
		Picture.where("url = ?", url)
	end

end
 