class Janken < ActiveRecord::Base

    def enemy
        
        hand = ["グー","チョキ","パー"].sample

        return hand
    end
end
