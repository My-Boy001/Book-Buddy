ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

module ActiveSupport
  class TestCase
    parallelize(workers: :number_of_processors)


    fixtures :all
    def login_as(user)
    @request.session[:user_id] = user.id
  end
  end
end
