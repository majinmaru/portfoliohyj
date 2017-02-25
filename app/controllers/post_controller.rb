class PostController < ApplicationController
    def index
        @posts= Post.all
    end
    
    def create
        @doc= Post.new(title: params[:title], writer: params[:writer], content: params[:content])
        if @doc.save
            redirect_to '/post/index'
        else
            redirect_to '/post/new'
        end
    end
    def new
        @posts= Post.all
    end
    def show
        @doc= Post.find(params[:id])
    end
    def edit
    end
    def update
        @doc = Post.find(params[:id])
        if @doc.update(title: params[:title], writer: params[:writer], content: params[:content])
        redirect_to '/post/index'
        else
            redirect_to '/post/#{params[:id]}/edit'
        end
    end
    def destroy
        @doc = Post.find(params[:id])
        @doc.destroy
        redirect_to '/post/index'
    end
end