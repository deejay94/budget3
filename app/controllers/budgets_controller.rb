class BudgetsController < ProtectedController
  before_action :set_budget, only: %i[update destroy]

  # GET /budgets
  def index
    @budgets = current_user.budgets

    render json: @budgets
  end

  # GET /budgets/1
  def show
    render json: Budget.find(params[:id])
  end

  # POST /budgets
  def create
    @budget = current_user.budgets.build(budget_params)

    if @budget.save
      render json: @budget, status: :created
    else
      render json: @budget.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /budgets/1
  def update
    if @budget.update(budget_params)
      head :no_content
    else
      render json: @budget.errors, status: :unprocessable_entity
    end
  end

  # DELETE /budgets/1
  def destroy
    @budget.destroy

    head :no_content
  end

    # Use callbacks to share common setup or constraints between actions.
    def set_budget
      @budget = current_user.budgets.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
  def budget_params
    params.require(:budget).permit(:id, :name, :goal, :actual)
  end

  private :set_budget, :budget_params
end
