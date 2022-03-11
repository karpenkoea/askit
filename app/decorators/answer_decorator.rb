class AnswerDecorator < Draper::Decorator
  delegate_all
  decorates_association :user

  def formatted_created_at
    I18n.l created_at, format: :long
  end
end
