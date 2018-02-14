class Product < ActiveRecord::Base
  def self.search(term)
    if term
      where('title LIKE ?', "%#{term}%").order('id DESC')
    else
      order('id DESC')
    end
  end
end
