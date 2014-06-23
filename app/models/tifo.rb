class Tifo < ActiveRecord::Base

  before_validation lambda { create_token(6) }
  
  validates :token, presence: true, uniqueness: true
  attr_readonly :token

  private

  def create_token(length)
    self.token ||= SecureRandom.hex(length)
  end

end
