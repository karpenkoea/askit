# Fields description start
# question: references
# body: text
# Fields description end
class Answer < ApplicationRecord
  # ============= Attributes ==========================

  # ============= Relationships ==========================
  belongs_to :question

  # ============= Validates ==========================
  validates :body, presence: true, length: {minimum: 3}

  # ============= Instance Methods ==========================
  def formatted_created_at
    created_at.strftime('%Y-%m-%d, %I:%M')
  end
end
