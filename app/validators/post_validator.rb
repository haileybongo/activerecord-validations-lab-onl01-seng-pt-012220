class PostValidator < ActiveModel::Validator
   
   def validate(record)
        words = [ "Won't Believe", "Secret", "Top [number]", "Guess"]
        if record.title
            unless words.any? { |s| record.title.include? s }
            record.errors[:title] << "Post does not include Clickbait text"
            end
        end
end
end