class PostsController < ApplicationController
  before_action :require_logged_in, only: [:new]
  
end
