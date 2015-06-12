class User < ActiveRecord::Base
    
  EMAIL_REGEXP = /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
  
  validates_presence_of :email, :full_name
  validates_uniqueness_of :email
  #validates_length_of :password, minimum: 8
  #validates_length_of :password_confirmation, minimum: 8
  validates_format_of :email, with: EMAIL_REGEXP
  
  has_secure_password
  
  before_create do |user|
    user.confirmation_token = SecureRandom.urlsafe_base64
  end
  
  def confirm!
    return if confirmed?
    
    self.confirmed_at = Time.current
    self.confirmation_token = ''
    save!
  end
    
  def confirmed?
    confirmed_at.present?
  end
  
  scope :confirmed, -> { where.not(confirmed_at: nil)}
    
  def self.authenticate(email, password)
    #user = 
    confirmed.
      find_by(email: email).
      try(:authenticate, password)
  end
  
  #has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "120x90>" }
  
  #validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
    
end
