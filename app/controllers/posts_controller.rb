class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(params_post)
		@post.save

		redirect_to @post
	end

	def update
	end

	def edit
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
	end

	private

	def params_post
		params.require(:post).permit(:content, :user_id)
	end

end
