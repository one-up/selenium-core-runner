module SeleniumCoreRunner
  class SuitesController < ApplicationController
    layout :layout
    private
    def suites_dir
      Rails.root.to_s+"/test/selenium"
    end
    def layout
      return 'application' if SeleniumCoreRunner.layout==:default
      SeleniumCoreRunner.layout || false
    end
    public
    def list
      @suites = []
      Dir::entries(suites_dir).each {|v|
        unless FileTest::directory?(suites_dir+"/"+v)
          @suites.push v
        end
      }
    end

    def runner 
      @suite = params[:suite]||"default"
    end

    def prompt
      @suite = params[:suite]||"default"
      render :layout=>false
    end

    def show
      path = params[:suite]
      path += "/"+params[:case] unless params[:case].blank?
      path += "."+params[:format] unless params[:format].blank?
      open(Rails.root.to_s+"/test/selenium/#{path}") {|f|
        render :text=>f.read , :layout=>false
      }
    end
  end
end

