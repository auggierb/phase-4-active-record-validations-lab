class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
    validate :customVal, on: :create
   
    def customVal
        errors.add("no") unless !title.include?("yahg")
 
    end

end
