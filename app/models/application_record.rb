# frozen_string_literal: true

class ApplicationRecord < ActiveRecord::Base
  include Rails.application.routes.url_helpers
  include ActionView::Helpers::NumberHelper
  self.abstract_class = true
  def generate_url_key(field)
    self.url_key = "#{field} #{id}".parameterize
    save
  end

  def images(host)
    if picture.attached?
      picture.map { |pic| rails_blob_url(pic, host: host) }
    else
      []
    end
  end
end
