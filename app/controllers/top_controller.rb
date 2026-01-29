class TopController < ApplicationController
  def index
    @newdates = Newdate.all
  end
  
  def new
    @newdate = Newdate.new
  end

  def create
    @newdate = Newdate.new(params.require(:newdate).permit(:title, :startday, :endday, :memo))
    if @newdate.save!
      flash[:notice] = "スケジュールを新規登録しました"
      redirect_to top_index_path
    else
      render "new", status: :unprocessable_entity
    end
  end

  def show
    @newdate = Newdate.find(params{:id})
  end

  def edit
    @newdate = Newdate.find(params{:id})
  end

  def update
    @newdate = Newdate.find(params{:id})
    if @newdate.update(params.require(:newdate).permit(:title, :startday, :endday, :memo))
      flash[:notice] = "「#{@newdate.id}」の情報を更新しました"
      redirect_to :newdate
    else
      render "edit", status: :unprocessable_entity
    end
  end

  def destroy
    @newdate = Newdate.find(params{:id})
    @newdate.destroy
    flash[:notice] = "スケジュールを削除しました"
    redirect_to :newdates
  end
end
