class BooksController < ApplicationController
  # see over アプリケーション4章
  # see over アプリケーション5章
  # see over アプリケーション6章
  # see over アプリケーション9章
  # see over アプリケーション フラッシュメッセージ
  
  
    def new
      @book = Book.new
    end
  
    def index
      @books = Book.all
      if params[:id].present?
        set_book
      else
        @book= Book.new   #indexにnewの内容を表示させるために追加
      end
    end
  
    def show
      @book = Book.find(params[:id])
    end
  
    def edit
      @book = Book.find(params[:id])
    end
  
    def update
      @book = Book.find(params[:id])
      if @book.update(book_params)   #成功ならtrueが返る
        flash[:notice] = "Book was successfully updated."
        redirect_to book_path(@book.id)
      else    #エラーであれば、元のモデルを保持する
        @books = Book.all
        render :edit
      end
    end
  
    def create
      @book = Book.new(book_params)
      if @book.save
        flash[:notice] = "Book was successfully created."
        redirect_to book_path(@book.id)
      else
        @books = Book.all
        render :index   #if an error occurs, try "render :new"
      end
    end
  
    def destroy
      book = Book.find(params[:id])
      book.destroy
      redirect_to books_path
      flash[:notice] = "Book was successfully destroyed."
    end
    
  
    private   # ←　アプリケーション2章　ストロングパラメータ
  
    def book_params
      params.require(:book).permit(:title, :body)
    end
  
  end
  