require 'grape'

module Collectivity
  class API < Grape::API
    rescue_from :all, :backtrace => (ENV["RACK_ENV"] == "development")
    error_format :json

    prefix "api"
    version "v1"

    get "version" do
      api.version
    end

    helpers do
      #
    end

    resource :organizations do
      get do
        Organization.all
      end

      get ':id' do
        Organization.find(params[:id])
      end
    end

    resource :members do
      get do
        Member.all
      end

      get ':id' do
        Member.find(params[:id])
      end
    end

  end
end
