class Point < ActiveRecord::Base
  validates :img , presence: true
  validates :ad_start , presence: true
  belongs_to :videoasset
  belongs_to :mptype
end
