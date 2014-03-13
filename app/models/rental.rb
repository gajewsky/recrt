class Rental < ActiveRecord::Base

  attr_accessor :how_long


  belongs_to :customer
  belongs_to :car


  validates :how_long, inclusion: {in: 1..365, :message => "cannot be negative. Between 1 day and 1 year"}
  validates :car, presence: true
  validates :customer, presence: true
  validate :period_not_overlapped

  def how_long
    self.end - self.start
  end

  def start_time

   self.start

  end



  private
  def period_not_overlapped
    unless Rental.where(
        'car_id==? AND ((start <= ? AND end >= ?) OR (start >= ? AND end <= ?))',
       car, self.start, self.start,
        self.start, self.end
    ).empty?
      errors.add(:start, 'This car is unavaialbe on this period.')
    end
  end


end
