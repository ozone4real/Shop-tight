class PourRecentlyViewedIntoDbJob < ApplicationJob
  queue_as :default

  def perform
    data = RedisService.get_set('recent_views')
    RedisService.delete('recent_views')
    data && RecentlyViewedProduct.create(data)
  end
end

