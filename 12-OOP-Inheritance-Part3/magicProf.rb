require_relative 'professor.rb'
require_relative 'subject.rb'

class MagicProfessor < Professor
    include Magic
    def initialize(x,y)
        super(x,y)
    end
end