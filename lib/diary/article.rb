module Diary
    
    # 日記の記事を作るクラス
    # @author Islands5
    class Article
    
        def initiarize change_day_until_this_hour=6
            @change_day_until_this_hour = change_day_until_this_hour
            @now = Time.new
        end

        private
        def today?
            if now.hour < change_day_until_this_hour
            end
        end
    end

end
