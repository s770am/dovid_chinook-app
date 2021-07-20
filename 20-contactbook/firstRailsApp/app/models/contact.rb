class Contact < ApplicationRecord

    def full_name
        return fname+" "+lname
    end
end
