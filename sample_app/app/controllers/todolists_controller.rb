class TodolistsController < ApplicationController

  def new
    # Viewへ渡すためのインスタンス変数に空のモデルオブジェクトを生成する。
    @list = List.new
  end

  def create
    # １. データを新規登録するためのインスタンス作成
    list = List.new(list_params)
    # ２. データをデータベースに保存するためのsaveメソッド実行
    list.save
    # 詳細画面へリダイレクト
    redirect_to todolist_path(list.id)
  end

  def index
    puts "作成したキー #{ENV['SECRET_KEY']}"
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    list = List.find(params[:id])
    list.update(list_params)
    redirect_to todolist_path(list.id)
  end

  def destroy
    list = List.find(params[:id])
    list.destroy
    redirect_to todolists_path
  end

  private
  # ストロングパラメータ
  def list_params
  # list_paramsではフォームで入力されたデータを受け取っている。
  # paramsはRailsで送られてきた値を受け取るためのメソッド。
    params.require(:list).permit(:title, :body, :image)
  end

end
