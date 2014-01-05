class Service < ActiveRecord::Base
  extend FriendlyId
  translates :title, :description
  friendly_id :title, use: :slugged
  
  def self.text_search(query)
    where("title @@ :q or description @@ :q", q: query) if query.present?
  end

end
