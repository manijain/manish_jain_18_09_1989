class Employee
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  field :first_name, type: String
  field :virtual_first_name, type: String
  field :username_email, type: String
  field :gender, type: String
  field :chat_limit, type: Integer
  field :email_limit, type: String
  field :is_multisession_allow, type: String
  field :select_volume, type: Integer
  field :select_ring_type, type: String
  field :created_date, type: Date
  field :role, type: String
end
