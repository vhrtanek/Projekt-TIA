class User < ActiveRecord::Base

  validates :email, presence: true
  
  has_many :imports
  
  def update(attrs)
    if attrs[:password].blank?
      update_without_changing_password(attrs)
    else
      update_with_password(attrs)
    end
  end
  
  private

  def update_without_changing_password(attrs)
    assign_attributes(attrs)
    clean_up_passwords
    save
  end
  
end
