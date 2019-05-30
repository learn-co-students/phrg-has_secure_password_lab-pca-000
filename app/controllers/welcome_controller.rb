# frozen_string_literal: true

class WelcomeController < ApplicationController
  before_action :require_login
  def new; end
end
