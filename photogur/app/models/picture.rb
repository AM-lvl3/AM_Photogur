class Picture < ActiveRecord::Base

scope :newest_first, -> { order("created_at DESC")}
scope :most_recent_five, -> { newest_first.limit(5)}
scope :created_before, -> {where("created_at < ?", 1.month.ago)}





end
 