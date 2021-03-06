class Rant < ActiveRecord::Base

  belongs_to :user, foreign_key: :user_id
  has_many :favorites
  has_many :comments
  validates :about, presence: true, :length => {:within => 1..40}
 # validates :rant, presence: true, :length => {:minimum => 140}


  def self.search(search)
    search_condition = "%" + search + "%"
    find(:all, :conditions => ['title LIKE ? OR description LIKE ?', search_condition, search_condition])
  end

end