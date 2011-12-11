module Collectivity
  class Organization < ActiveRecord::Base
    has_many :members
  end
end
