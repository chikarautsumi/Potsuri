class TweetsController < ApplicationController
    # 一覧表示
    def index
        @tweets = Tweet.all
    end
end
