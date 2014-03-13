class Car < ActiveRecord::Base

  mount_uploader :picture, PictureUploader
  has_many :rentals
  attr_accessor :cost
  validates :name, presence: true, uniqueness: true
  validates :comfort_class, inclusion: {in: %w(A B C), :message => 'You have to choose A, B or C'}
  validates :describtion, length: {maximum: 150}



  def cost
    case comfort_class
      when 'A'
        return 100
      when 'B'
        return 75
      when 'C'
        return 50
    end

  end

end
