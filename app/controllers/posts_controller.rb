class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def create
		#render plain: params[:author].inspect
		@post = Post.create(params_book)
		redirect_to '/'

	end

	def delete
		#render plain: params[:id];

		book = Post.find(params[:id])
		book.destroy
		redirect_to '/'

	end

	def show
		#render plain: params[:id]
		@post = Post.find(params[:id])
	end

	def update
		#render plain: params[:id]

		post = Post.find(params[:id])
		post.update(params_book)
		redirect_to '/'
	end

	private def params_book
		params.require(:book).permit(:title,:author)
	end
end
