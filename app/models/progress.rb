class Progress < ApplicationRecord
  belongs_to :worker
  belongs_to :product

  enum progress_status: { waiting: 0, phase_one: 1, phase_two: 2, phase_three: 3, phase_four: 4, finish: 5 }
end
