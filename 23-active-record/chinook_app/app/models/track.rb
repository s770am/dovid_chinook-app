class Track < ApplicationRecord

    SHORT = 180000
    LONG = 360000


    scope :short, -> { shorter_than(SHORT) }
    scope :long, -> { longer_than_or_equal_to (LONG) }
    scope :medium, -> { longer_than_or_equal_to(SHORT).shorter_than(LONG) }
    scope :starts_with, -> (char) { where('name ILIKE ?', "#{char}%") }

    scope :shorter_than, -> (milliseconds){
        where('milliseconds < ?', milliseconds)  if(milliseconds && milliseconds > 0)
    }

    scope :longer_than_or_equal_to, -> (milliseconds){
        where('milliseconds >= ? ', milliseconds)  if(milliseconds && milliseconds > 0)
    }

    # scope :shorter_than, -> (milliseconds){
    #     if(milliseconds && milliseconds > 0)
    #         where('milliseconds < ?', milliseconds)
    #     end
    # }




    # def self.shorter_than(milliseconds)
    #     if(milliseconds && milliseconds > 0)
    #         where('milliseconds < ?', milliseconds)
    #     else
    #         all
    #     end
    # end

    # def self.longer_than_or_equal_to(milliseconds)
    #     where('milliseconds >= ? ', milliseconds)
    # end

    
    # def self.starts_with(char)
    #     where('name ILIKE ?', "#{char}%")
    # end

    # def self.short
    #     # where('milliseconds < ?', SHORT)
    #     shorter_than(SHORT)
    # end

    # def self.long
    #     # where('milliseconds >= ? ', LONG)
    #     longer_than_or_equal_to((LONG))
    # end

    # def self.medium
    #     # where('millisecond >= ?', SHORT).where('milliseconds < ?', LONG)
    #     longer_than_or_equal_to(SHORT).shorter_than(LONG)
    # end

   
end
