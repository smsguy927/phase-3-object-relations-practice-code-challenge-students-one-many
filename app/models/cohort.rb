# frozen_string_literal: true

class Cohort < ActiveRecord::Base
  has_many :students

  def students
    Student.all.filter { |student| student.cohort_id == id }
  end

  def add_student(name, age)
    Student.create(name: name, age: age, cohort_id: id)
  end

  def average_age
    students.map(&:age).sum * 1.0 / students.length
  end

  def total_students
    students.length
  end

  def self.biggest
    all.max_by(&:total_students)
  end

  def self.sort_by_mod
    all.sort { |first, second| first.current_mod - second.current_mod }
  end
end
