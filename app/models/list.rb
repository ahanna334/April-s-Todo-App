class List < ApplicationRecord
    has_many :comments, dependent: :delete_all
# search feature
def self.search(search_params)
    if search_params
        where('LOWER(description) LIKE ?', "%#{search_params.downcase}%")
    elsif search_params
        search.blank? ? [] : all(:conditions => ['description LIKE ?', "%#{search_params.strip}%"])
    else
        all
    end
  end
end
