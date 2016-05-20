class Post < ActiveRecord::Base
    has_many :datguls
    validates :title,  presence: {message: "크엉"}
    validates :content,presence: {message: "크르렁"}
end
