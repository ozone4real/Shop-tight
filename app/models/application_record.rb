# frozen_string_literal: true

class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  def generate_url_key(field)
    self.url_key = "#{field} #{id}".parameterize
    save
  end
end
