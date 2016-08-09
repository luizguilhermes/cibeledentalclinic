class AppointmentsController < ApplicationController
	before_action :set_collection, only: [:index, :new, :edit]
	def new
		@appointment = Appointment.new
	end

	def index
	end

	private
	
	def set_collection
		@customers = Customer.all
		@appointments = Appointment.all
	end
end