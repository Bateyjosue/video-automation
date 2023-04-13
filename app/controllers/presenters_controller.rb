class PresentersController < ApplicationController
  def index
    @presenters = Presenter.all
  end
  def new
    @presenter = Presenter.new
  end
  def show
    @presenter = Presenter.find(params[:id])
  end

  def create
    @presenter = Presenter.new(presenter_params)
    if @presenter.save
      redirect_to presenters_path
    else
      flash.now[:error] = @presenter.errors.full_messages
      render :new
    end
  end

  def edit
  end
  def update
  end

  private
  def presenter_params
    params.require(:presenter).permit(:name, :twitter_handle, :linked_in, :role)
  end
end
