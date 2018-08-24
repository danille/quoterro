class Quote < ApplicationRecord
  validates_presence_of :text
  validates_uniqueness_of :text
end
