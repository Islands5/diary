require 'optparse'

module Diary

    # コマンドラインベースの処理を行うクラスです
    # @author Islands5
    class Command

        def initialize(argv)
            @argv = argv
        end

        def execute
            options = Options.parse!(@argv)
            diary_path = Article.prepare
            system("vim #{diary_path}")
        end

        def self.run(argv)
            new(argv).execute
        end
    end

end
