# Fields description start
# user: references
# title: string
# body: text
# Fields description end
class Question < ApplicationRecord
  include Commentable
  
  # ============= Attributes ==========================

  # ============= Relationships ==========================
  belongs_to :user
  has_many :answers, dependent: :destroy

  # ============= Validates ==========================
  validates :title, presence: true, length: {minimum: 2}
  validates :body, presence: true, length: {minimum: 3}

  # ============= Callbacks ==========================

  # ============= Instance Methods ==========================
end
