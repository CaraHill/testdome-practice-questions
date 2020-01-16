# @param [Array<Hash>] students
#   Array of student records (array of hashes)
# @param [Array<Lambda>] filters
#   Zero or more filters to apply - each filter is a lambda returning a boolean
#
# @return [Array<Hash>]
#   An array of students who pass ALL provided filters
def filter(students, *filters)
  honor_roll = []
  students.map do |student|
    grade = filters.map { |filter| filter.call(student) }
    honor_roll << student if grade.all?(true)
  end

  honor_roll
end

students = [
  { name: 'Thomas Edison', gpa: 3.45 },
  { name: 'Grace Hopper', gpa: 3.99 },
  { name: 'Leonardo DaVinci', gpa: 2.78 }
]

honor_roll = ->(record) { record[:gpa] > 3.0 }

honor_roll_members = filter(students, honor_roll)
puts honor_roll_members # it should print
# {:name=>"Thomas Edison", :gpa=>3.45}
# {:name=>"Grace Hopper", :gpa=>3.99}
