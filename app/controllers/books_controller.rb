class BooksController < ApplicationController

	def index
		@books = Book.all
	end

	def search
		@books = Book.where(:title => params[:title])
		render 'index'
	end
	def new

	end

	def create
		@book = Book.new(params[:book])
		if @book.save 
			redirect_to @book, :notice => 'Libro creada exitosamente!'
		else
			render 'new'
		end
	end

	def show
		@book = Book.find(params[:id])
	end

	def like
		@book = Book.find(params[:id])
		@book.likes = @book.likes ? @book.likes+1 : 0
		if @book.save 
			redirect_to @book, :notice => 'Liked'
		else
			render 'new'
		end
	end
end
