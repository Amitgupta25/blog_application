module Visible
  extend ActiveSupport::concern

  VALID_STATUSES = ['public', 'private', 'archived']
included do
  validates :status, inclusion: { in: VALID_STATUSES}
end

  def archived?
    status == archived
  end
end