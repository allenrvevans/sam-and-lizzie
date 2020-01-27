require 'airtable'
require 'active_support/all'

class RsvpsController < ApplicationController

  def initialize
    client = Airtable::Client.new("keykYRK7UNj6N1M03")
    @table = client.table("appnnvvlweqxf6pHS", "RSVP")
  end

  def edit

    recordsWithCode = @table.select(formula: "code = '#{params[:code]}'")
    if ! recordsWithCode.records.empty?
      record = recordsWithCode.records[0]

      @guests = record[:guests]

      @first_name_1 = record[:first_name_1]
      @first_name_2 = record[:first_name_2]
      @surname_1 = record[:surname_1]
      @surname_2 = record[:surname_2]

      @attending_wedding_1 = (record[:attending_wedding_1] == true)
      @attending_wedding_2 = (record[:attending_wedding_2] == true)

      @attending_bbq_1 = (record[:attending_bbq_1] == true)
      @attending_bbq_2 = (record[:attending_bbq_2] == true)


      @dietary_requirements_1 = record[:dietary_requirements_1]
      @dietary_requirements_2 = record[:dietary_requirements_2]

      @music_suggestions = record[:music_suggestions]
    end

  end

  def update

    recordsWithCode = @table.select(formula: "code = '#{params[:code]}'")
    if ! recordsWithCode.records.empty?
      record = recordsWithCode.records[0]
      record["First name 1"] = params[:first_name_1]
      record["First name 2"] = params[:first_name_2]
      record["Surname 1"] = params[:surname_1]
      record["Surname 2"] = params[:surname_2]

      record["Attending wedding 1"] = (params[:attending_wedding_1] == "true")
      record["Attending wedding 2"] = (params[:attending_wedding_2] == "true")

      record["Attending BBQ 1"] = (params[:attending_bbq_1] == "true")
      record["Attending BBQ 2"] = (params[:attending_bbq_2] == "true")


      record["Dietary requirements 1"] = params[:dietary_requirements_1]
      record["Dietary requirements 2"] = params[:dietary_requirements_2]

      record["Music Suggestions"] = params[:music_suggestions]

      @table.update(record)

      redirect_to(action: 'thanks')
    end

  end

  def thanks
  end

end