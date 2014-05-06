class DemoListsController < ApplicationController
  before_action :set_demo_list, only: [:show, :edit, :update, :destroy]

  # GET /demo_lists
  # GET /demo_lists.json
  def index
    @demo_lists = DemoList.all
  end

  # GET /demo_lists/1
  # GET /demo_lists/1.json
  def show
  end

  # GET /demo_lists/new
  def new
    @demo_list = DemoList.new
  end

  # GET /demo_lists/1/edit
  def edit
  end

  # POST /demo_lists
  # POST /demo_lists.json
  def create
    @demo_list = DemoList.new(demo_list_params)

    respond_to do |format|
      if @demo_list.save
        format.html { redirect_to @demo_list, notice: 'Demo list was successfully created.' }
        format.json { render :show, status: :created, location: @demo_list }
      else
        format.html { render :new }
        format.json { render json: @demo_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /demo_lists/1
  # PATCH/PUT /demo_lists/1.json
  def update
    respond_to do |format|
      if @demo_list.update(demo_list_params)
        format.html { redirect_to @demo_list, notice: 'Demo list was successfully updated.' }
        format.json { render :show, status: :ok, location: @demo_list }
      else
        format.html { render :edit }
        format.json { render json: @demo_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /demo_lists/1
  # DELETE /demo_lists/1.json
  def destroy
    @demo_list.destroy
    respond_to do |format|
      format.html { redirect_to demo_lists_url, notice: 'Demo list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_demo_list
      @demo_list = DemoList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def demo_list_params
      params.require(:demo_list).permit(:name, :content)
    end
end
