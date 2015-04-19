require 'date'
require 'fileutils'

module Diary
    
    # 日記の記事を作るクラス
    # @author Islands5
    module Article
    
        def self.prepare
            change_day_until_this_hour = 6
            article_name = exists_article change_day_until_this_hour
            article_name += '.md'
            diary_path = File.join(ENV['HOME'], '.diary', article_name)
            create_article_if_not_exists diary_path
            return diary_path
        end

        def self.create_article_if_not_exists diary_path
            create_diary_path diary_path
        end

        def self.exists_article change_day_until_this_hour
            now = DateTime.now
            article_name = now.strftime('%Y%m%d')
            if now.hour < change_day_until_this_hour
                article_name = now.prev.strftime('%Y%m%d')
            end
            article_name
        end

        def self.create_diary_path path
            FileUtils.mkdir_p File.dirname(path)
        end

        private_class_method :create_article_if_not_exists, :exists_article, :create_diary_path
    end

end
