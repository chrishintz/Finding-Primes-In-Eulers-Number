class EulersController < ApplicationController
  require 'csv'

  def index
  end

  def calculate
    @euler = Euler.new
    @results = []
    if params[:csv]
      file = CSV.new(params[:csv].tempfile).read()
      file.map do |i|
        @results << @euler.calculate(i[0].to_i, i[1].to_i)
      end
      @results
    else
      @results << @euler.calculate(params[:digits].to_i, params[:prime_number].to_i)
    end
    render :index
  end
end
