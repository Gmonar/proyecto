class Profile < ActiveRecord::Base 
  belongs_to :user  
  has_attached_file :avatar,   
    styles: { thumb: '100x100>', medium: '300x300>'},   
    default_url: '/images/:style/missing.png' 
  validates_attachment :avatar,   
    content_type: { content_type: ['image/jpeg', 'image/png', 'image/gif'] } 
  def full_name     
    self.first_name + " " + self.last_name 
  end
end