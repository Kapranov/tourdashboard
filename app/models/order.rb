class Order < ActiveRecord::Base
  extend FriendlyId
  friendly_id :tourist_id
  belongs_to :agency
  belongs_to :tourist

  default_scope -> { joins(:tourist).order('tourists.lastname_en ASC, orders.tourist_id ASC') }

  validates :tourist_id, presence: true

  def to_label
    "#{tourist_id}"
  end

  def to_name
    "#{tourist_id}"
  end

  def to_s
    "#{tourist_id}"
  end

  def tourist_name
     tourist.name if tourist
  end

  def agency_name
    agency.name if agency
  end

  def self.search search
    where("id || tourist_id || tourists.lastname_en LIKE ?", "%#{search}%")
  end

end
