class DemoController < ApplicationController
  
  layout false
  
  def index
    # render('demo/index')
  end
  
  def hello
    @array = [1,2,3,4,5]
    @id = params['id']
    @page = params[:page]
    # render('hello')
    # redirect_to(:controller => 'demo', :action => 'index')
  end

  def about
    render('about_us')
  end

  def contact
    if ['us'].include?(params[:country])
      @phone='800 65489077'
    elsif params[:country]=='in'
      @phone='+91 2345678901'
    else
      @phone='+1 5647564756'
    end
    render('contact_us')
  end

end
