class WelcomeController < ApplicationController
  def index
  end

  def about
  end

  def contact
  end

  def faq
  end

  def avatar_url(user)
   gravatar_id = Digest::MD5::hexdigest(user.email).downcase
   "http://gravatar.com/avatar/#{gravatar_id}.png?s=48"
 end
end
