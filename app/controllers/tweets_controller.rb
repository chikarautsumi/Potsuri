class TweetsController < ApplicationController
    # 一覧表示
    def index
        @tweets = Tweet.all
    end

    def new
        @tweet  = Tweet.new
    end

    def create
        @tweet = Tweet.new(tweet_params)
        if @tweet.save
            flash[:notice] = '投稿完了しました'
            redirect_to tweets_path
        else
            render action: :new
        end
    end
    private
    def tweet_params
        params.require(:tweet).permit(:content)
    end
end
