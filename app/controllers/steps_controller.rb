class StepsController < ApplicationController

  before_filter :find_recipe
  before_filter :find_step, :only => [:show, :edit, :update, :destroy]

  def index
  end

  def show
    @step = Step.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @step }
    end
  end

  def new
    @step = @recipe.steps.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @step }
    end
  end

  def edit
    @step = Step.find(params[:id])
  end

  def create

    @step = @recipe.steps.build(params[:step])
    if @step.save
     # flash[:notice] = "Step has been created."
      redirect_to [@recipe]
    else
    #  flash[:alert] = "Step has not been created."
      render :action => "new"
    end

  end

  def update
    @step = Step.find(params[:id])

    respond_to do |format|
      if @step.update_attributes(params[:step])
        format.html { redirect_to @recipe, notice: 'Step was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @step.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @step.destroy
    redirect_to @recipe
    flash[:notice] = "Step was deleted."
  end

  private

    def find_recipe
      @recipe = Recipe.find(params[:recipe_id])
    end

    def find_step
      @step = @recipe.steps.find(params[:id])
    end

end
