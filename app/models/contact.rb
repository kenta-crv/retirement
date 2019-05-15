class Contact
  include ActiveModel::Model
    
  attr_accessor :company, :name, :tel, :email, :address, :subject, :message

  validates :name, {presence: true}
  validates :tel, {presence: true}
  validates :email, {presence: true}
  validates :message, {presence: true}
end