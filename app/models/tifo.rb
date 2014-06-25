class Tifo < ActiveRecord::Base

  belongs_to :user
  belongs_to :team
  has_many :photos

  accepts_nested_attributes_for :photos

  before_validation lambda { create_token(6) }
  
  validates :token, presence: true, uniqueness: true
  attr_readonly :token

  private

  def create_token(length)
    self.token ||= SecureRandom.hex(length)
  end

end
