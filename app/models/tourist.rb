class Tourist < ActiveRecord::Base
  extend FriendlyId
  friendly_id :lastname_en
  has_many :orders
  accepts_nested_attributes_for :orders

  default_scope -> { order(:lastname_ua => :asc) }

  validates_presence_of :email
  validates :email,
    :presence => true,
    :format => { :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/ ,
      :message => 'Invalid e-mail! Please provide a valid e-mail address'},
      :on => :create

  def to_label
    "#{lastname_en}"
  end

  def to_name
    "#{lastname_en}"
  end

  def to_s
    "#{lastname_en}"
  end

  def self.search search
    where("id || email || phone_mobile || lastname_en || lastname_ua || add_lastname_en_one || add_lastname_en_two || add_lastname_en_three || add_lastname_en_four || add_lastname_en_five LIKE ?", "%#{search}%")
  end

  def tags_for_form
    collection = orders.where(tourist_id: id)
    collection.any? ? collection : orders.build
  end

end
