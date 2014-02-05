class CookiesController < ApplicationController
  def index 
  @cookies = Cookie.all 
  end
  def new
    @cookie = Cookie.new
  end 
  def show
    @cookie = Cookie.find params[:id]
  end
  def create 
    @cookie = Cookie.new params.require(:cookie).permit [:image,:title]
    if @cookie.save 
      redirect_to cookies_path
    else
      render :new
    end
  end
  def edit 
    @cookie = Cookie.find params[:id]
  end
  def destroy 
    @cookie = Cookie.find params[:id]
    @cookie.destroy
    redirect_to cookies_path
  end
end
