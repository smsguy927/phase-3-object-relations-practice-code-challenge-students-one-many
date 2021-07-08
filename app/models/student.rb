# frozen_string_literal: true

class Student < ActiveRecord::Base
  belongs_to :cohort

  def cohort
    Cohort.all.find { |cohort| cohort.id == cohort_id }
  end

  def current_mod
    cohort.current_mod
  end
end
