class Family < ActiveRecord::Base
     validates :birthday, presence: true,format:{ with: \d{4}/\d{1,2}/\d{1,2} }
     validates :last_name, presence: true,length: { maximum: 20 }
     validates :lastname_kana, presence: true,length: { maximum: 50 }
     validates :first_name, presence: true,length: { maximum: 20 }
     validates :firstname_kana, presence: true,length: { maximum: 50 }
     validates :contact_information, presence: true, format:{ with: /\A\d+-\d+-\d+\z/ }
     validates :address, presence: true,length: { minimum: 5 } 
     validates :relationship, presence: true,length: { maximum: 10 }
end