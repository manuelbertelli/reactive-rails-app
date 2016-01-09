class CoffeeCup
  KINDS_OF_COFFEE = %w(latte espresso cappuccino)
  STATUSES = %w(pending ready)

  include NoBrainer::Document
  include NoBrainer::Document::Timestamps

  field :user_id, type: String, required: true
  field :kind, type: String, required: true, in: KINDS_OF_COFFEE
  field :status, type: String, required: true, in: STATUSES, default: 'pending'
end