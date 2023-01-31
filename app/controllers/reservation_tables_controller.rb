class ReservationTablesController < ApplicationController
  def index
    @reservation_tables = ReservationTable.all
    @reservation_table = ReservationTable.new
  end

  def reserve

  end

  def new
    @reservation_table = ReservationTable.new
    @day = params[:day]
  end

  def show
    @reservation_table = ReservationTable.find(params[:id])
  end

  def create
    ReservationTable.create(reservation_table_parameter)
    redirect_to reservation_tables_path
  end

  def destroy
    @reservation_table = ReservationTable.find(params[:id])
    @reservation_table.destroy
    redirect_to reservation_tables_path, notice:"deleted"
  end

  def edit
    @reservation_table = ReservationTable.find(params[:id])
  end

  def update
    @reservation_table = ReservationTable(params[:id])
    if @reservation_table.update(reservation_table_parameter)
      redirect_to reservation_tables_path, notice: "edited"
    else
      render 'edit'
    end
  end

  private

  def reservation_table_parameter
    params.require(:reservation_table).permit(:title, :context, :start_time)
  end
end

