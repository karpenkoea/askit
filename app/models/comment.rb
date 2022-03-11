# Fields description start
# user: references
# question: references
# body: text
# Fields description end
class Comment < ApplicationRecord
  # ============= Attributes ==========================

  # ============= Relationships ==========================
  belongs_to :commentable, polymorphic: true
  belongs_to :user

  # ============= Validates ==========================
  validates :body, presence: true, length: { minimum: 2 }

  # ============= Callbacks ==========================
  
  # ============= Instance Methods ==========================
end
