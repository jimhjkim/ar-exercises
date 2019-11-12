class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, presence: true
  validate :apparel?

  before_destroy :non_empty?

  def apparel?
    if !mens_apparel && !womens_apparel
      errors.add(:mens_apparel, :womens_apparel, message: 'cannot both be false')
    end
  end

  private

  def non_empty?
    if !Employee.find_by({ store_id: self.id })
    else
      errors.add(:id, message: 'cannot delete store with employees')
      throw :abort
    end
  end
end
