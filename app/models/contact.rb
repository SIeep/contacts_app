class Contact < ApplicationRecord
  #validates :first_name, :last_name, presence: true
  #validates :email, uniqueness: true
  belongs_to :user
  has_many :contact_groups
  has_many :groups, through: :contact_groups
  def friendly_updated_at
    friendly_time = created_at.strftime("%b %e, %l:%M %p")
    p friendly_time
  end

  def add_japan_code
    japan_code = "+ 81"
  end
end
