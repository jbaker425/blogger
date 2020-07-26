class ArticlesController < ApplicationController
    include ArticlesHelper

    #Homepage
    def index
        @articles = Article.all
    end
    #View specific article
    def show
        @article = Article.find(params[:id])
    end
    #New article form
    def new
        @article = Article.new
    end
    #New article submit
    def create
        @article = Article.new(article_params)
        @article.save
        flash.notice = "Article '#{@article.title}' Created!"
        redirect_to article_path(@article)
    end
    #Delete article
    def destroy
        @article = Article.find(params[:id])
        @article.destroy
        flash.notice = "Article '#{@article.title}' Deleted!"
        redirect_to articles_path
    end
    #Edit article form
    def edit
        @article = Article.find(params[:id])
    end
    #Submit edit
    def update
        @article = Article.find(params[:id])
        @article.update(article_params)
        flash.notice = "Article '#{@article.title}' Updated!"
        redirect_to article_path(@article)
    end
end
