class Janken < ActiveRecord::Base

    # jankenデータベースから一つ前の手を取得
    def previous
        
	Janken.where("id < ?", self.id).order("id DESC").first
    end

    # 手を自動生成
    def enemy
        
        hand = ["グー","チョキ","パー"].sample

        return hand
    end
end
