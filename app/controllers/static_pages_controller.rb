class StaticPagesController < ApplicationController
  def home
    #=>"app/vies/#{リソース名}/@{アクション名}.html.erb"
    #=>"app/view/statis_pages_controller.rb"
    if logged_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def help
  end

  def about
    #=>"app/view/statis_pages_controller.rb"

  end

  def contact
  end


end
