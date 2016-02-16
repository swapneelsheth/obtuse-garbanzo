# == Schema Information
#
# Table name: ratings
#
#  id         :integer          not null, primary key
#  comment    :text
#  review     :integer
#  song_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Rating < ActiveRecord::Base
  belongs_to :song
  attr_accessible :comment, :review, :song_id
end
