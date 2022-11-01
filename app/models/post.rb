class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: ['Fiction', 'Non-Fiction']}
    validate :clickbait?

    


    def clickbait?
        # clickbait_patterns = ["Won't Believe", "Secret", "Top [number]", "Guess"]
        # if self.title == nil
        #     return
        # end
        # if clickbait_patterns.none? {|pattern| title.include?(pattern)}
        #     errors.add(:title, "title is not clickbait")
        # end
        if !title
            return
        end
       unless self.title.include?("Won't Believe" || "Secret" || "Top [number]" || "Guess")
        errors.add(:title, "make it juicier")
       end
    end





end
