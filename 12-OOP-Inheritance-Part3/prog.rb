require_relative "student.rb"
require_relative "magicProf.rb"

snape = MagicProfessor.new("Snape", "Severus")
stewie =  Student.new("Stewie", "Griffin")
students = []
students << stewie
students << Student.new("Chriss", "Griffin")
students << Student.new("Brian", "Griffin")
students << Student.new("Meg", "Griffin")
students << Student.new("Lois", "Griffin")

snape.teach(stewie)
snape.teach(stewie)
snape.teachCohort(students)

snape.giveBonus(students)

snape.spells

# modules/mixins