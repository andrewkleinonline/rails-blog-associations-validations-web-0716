class Post < ActiveRecord::Base
  validates :content, presence: true
  validates :name, presence: true

  has_many :post_tags
  has_many :tags, through: :post_tags
  belongs_to :user

  accepts_nested_attributes_for :tags, reject_if: proc { |attributes| attributes[:name].blank? }


end
