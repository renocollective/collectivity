module Collectivity
  class Member < ActiveRecord::Base
    belongs_to :organization
  end
end
