class User < ActiveRecord::Base
    
  EMAIL_REGEXP = /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
  
  validates_presence_of :email, :full_name
  validates_uniqueness_of :email
  validates_length_of :password, minimum: 8
  validates_length_of :password_confirmation, minimum: 8
  validates_format_of :email, with: EMAIL_REGEXP
  
  has_secure_password
  
  #has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "120x90>" }
  
  #validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
    
end
