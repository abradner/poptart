# frozen_string_literal: true

class Ticket < ApplicationRecord
  belongs_to :owner

  scope :served, -> { where served: true }
  scope :waiting, -> { where served: false }

  validates :uniqueness, :owner_id, conditions: -> { where(served: false) }
end
