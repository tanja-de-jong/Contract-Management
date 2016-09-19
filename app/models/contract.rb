class Contract < ActiveRecord::Base
  validates :url, :presence > true
end
