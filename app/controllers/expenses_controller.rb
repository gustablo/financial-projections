class ExpensesController < ApplicationController

    def index
        @expenses = Expense.all
    end

    def new
        @expense = Expense.new
    end

    def create
        @expense =  Expense.new(expense_params)

        respond_to do |format|
            if @expense.save
                format.html { redirect_to expenses_url }
            else
                format.html { render :new, status: :unprocessable_entity }
            end
        end
    end

    private

    def expense_params
        params.require(:expense).permit(:name, :amount, :fixed, :payed_at)
    end
end

