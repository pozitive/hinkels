class Article < ActiveRecord::Base
  translates :title, :description
  validates :title, :description, presence: true

  def self.text_search(query)
    where("title @@ :q or description @@ :q", q: query) if query.present?
  end
  
end
