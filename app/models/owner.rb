# frozen_string_literal: true

class Owner < ApplicationRecord
  has_many :tickets
end
