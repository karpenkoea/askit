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
    I18n.l created_at, format: :long
  end
end
