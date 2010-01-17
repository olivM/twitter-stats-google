class StatsController < ApplicationController

  def index

    @terms = Term.find(:all)

  end

  def show

    @term = Term.find(params[:id])
    @stats = @term.stats.find(:all, :order => "day ASC")

  end

end
