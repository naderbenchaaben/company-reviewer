class Company < ApplicationRecord
    has_many :reviews

    before_create :slugify

    def slugify
        self.slug = name.parameterize
        def avg_score
            reviews.average(:score).round(2).to_f
        end
    
    end

end
