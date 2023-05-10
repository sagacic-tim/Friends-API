class Friend < ApplicationRecord
    # has_many :parties
    # has_many :partyplaces, through => parties
    validates :full_name, length: { minimum: 2 }, format: {with: /\A[^0-9`!@#\$%\^&*+_=]+\z/}
    validates :phone, phone: true, allow_blank: true
    validates_address fields: [:location]
    validates_address fields: [:street_address, :city, :state_provence, :postal_code, :country]
    validates :email, email: true
    validates :twitter, presence: true, uniqueness:{ case_sensetive:false }, format:{ with: /@([A-Za-z0-9_]{1,15})/, multiline:false, message: "Please enter valid Twitter account name" }
    validates :available_to_party, inclusion: [true, false]

    before_save :normalize_phone
  
    def formatted_phone
      parsed_phone = Phonelib.parse(phone)
      return phone if parsed_phone.invalid?
  
      formatted =
        if parsed_phone.country_code == "1"
          parsed_phone.full_national
        else
          parsed_phone.full_international
        end
      formatted.gsub!(";", " x")
      formatted
    end
  
    private
  
    def normalize_phone
      self.phone = Phonelib.parse(phone).full_e164.presence
    end
end
