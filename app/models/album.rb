# == Schema Information
#
# Table name: albums
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  release    :date
#  genre      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Album < ActiveRecord::Base
  
  has_many :songs
  has_many :ratings, through: :songs
  
  attr_accessible :genre, :name, :release
end
