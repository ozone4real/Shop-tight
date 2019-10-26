# frozen_string_literal: true

class RecentlyViewedProduct < ApplicationRecord
  belongs_to :user
  belongs_to :product
end
