# Fields description start
# title: string
# body: text
# Fields description end
class Question < ApplicationRecord
  # ============= Attributes ==========================

  # ============= Relationships ==========================
  has_many :answers, dependent: :destroy

  # ============= Validates ==========================
  validates :title, presence: true, length: {minimum: 2}
  validates :body, presence: true, length: {minimum: 3}

  # ============= Instance Methods ==========================
  def formatted_created_at
    I18n.l created_at, format: :long
  end
end
