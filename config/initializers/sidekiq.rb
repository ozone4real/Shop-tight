# frozen_string_literal: true

Sidekiq.configure_server do
  Sidekiq::Cron::Job.create(name: 'PourRecentlyViewedIntoDbJob - every 5min', cron: '*/5 * * * *', class: 'PourRecentlyViewedIntoDbJob', active_job: true)
end
