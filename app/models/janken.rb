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

    def judge

	if @janken.hand == "グー" then
	    if @enemy.hand == "グー" then
		@result = "あいこ"
	    elsif @enemy.hand == "チョキ" then
		@result = "勝ち"

	    elsif @enemy.hand == "パー" 

		@result = "負け"
	    else

	    end
	elsif @janken.hand == "チョキ" then
	     if @enemy.hand == "グー" then
		@result = "負け"
	    elsif @enemy.hand == "チョキ" then
		@result = "あいこ"

	    elsif @enemy.hand == "パー" 

		@result = "勝ち"
	    else
		@result = "エラー"

	    end

	elsif @janken.hand == "パー" 
	     if @enemy.hand == "グー" then
		@result = "勝ち"
	    elsif @enemy.hand == "チョキ" then
		@result = "負け"

	    elsif @enemy.hand == "パー" 

		@result = "あいこ"
	    else
		@result = "エラー"

	    end

	else
	    @result = "エラー"

	end
end
