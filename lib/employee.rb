class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { greater_than: 40, less_than: 200 }
  validates :store_id, presence: true

  after_create :set_password

  private

  def set_password(length = 8)
    source = ('a'..'z').to_a + ('A'..'Z').to_a + (0..9).to_a + ['_', '-', '.']
    key = ''
    length.times { key += source[rand(source.size)].to_s }
    
    # self.password = key
    self.update(password: key)

  end

end
