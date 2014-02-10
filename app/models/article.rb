class Article < ActiveRecord::Base
  extend FriendlyId
  translates :title, :description
  validates :title, :description, presence: true
  friendly_id :title, use: :slugged

  has_ancestry
  def self.text_search(query)
    where("title @@ :q or description @@ :q", q: query) if query.present?
  end
  
end
