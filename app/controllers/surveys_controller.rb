class SurveysController < ApplicationController
require 'nokogiri'
require 'open-uri'
  def index
   
  end

  def create
    @survey = Survey.new(params[:survey])
      @part = "2"
      if @survey.save
          render 'surveys/next.js'
      else
         render 'surveys/error.js'
      end
    
  end

  def update
    doc = Nokogiri::HTML(open('http://www.gifbin.com/random'))
    @gif = doc.css('#gif')
    @survey = Survey.find(params[:id])
      @part = "3"
      @survey.update_attributes(params[:survey])
      if @survey.save
          render 'surveys/next.js'
      else
         render 'surveys/error.js'
      end
  end
end


