class Videoasset < ActiveRecord::Base
  validates :merlinid, presence: true
  self.primary_key = 'merlinid'
  has_many :points
  accepts_nested_attributes_for :points
 
end
