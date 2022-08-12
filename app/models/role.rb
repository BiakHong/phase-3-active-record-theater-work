class Role < ActiveRecord::Base
    has_many :auditions
    has_many :actors, through: :auditions

    def auditions
        self.audition
    end

    def actors
        self.actors do |n|
            n.name
        end
    end
end