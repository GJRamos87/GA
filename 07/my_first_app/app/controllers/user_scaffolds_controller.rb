class UserScaffoldsController < ApplicationController
  before_action :set_user_scaffold, only: [:show, :edit, :update, :destroy]

  # GET /user_scaffolds
  # GET /user_scaffolds.json
  def index
    @user_scaffolds = UserScaffold.all
  end

  # GET /user_scaffolds/1
  # GET /user_scaffolds/1.json
  def show
  end

  # GET /user_scaffolds/new
  def new
    @user_scaffold = UserScaffold.new
  end

  # GET /user_scaffolds/1/edit
  def edit
  end

  # POST /user_scaffolds
  # POST /user_scaffolds.json
  def create
    @user_scaffold = UserScaffold.new(user_scaffold_params)

    respond_to do |format|
      if @user_scaffold.save
        format.html { redirect_to @user_scaffold, notice: 'User scaffold was successfully created.' }
        format.json { render :show, status: :created, location: @user_scaffold }
      else
        format.html { render :new }
        format.json { render json: @user_scaffold.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_scaffolds/1
  # PATCH/PUT /user_scaffolds/1.json
  def update
    respond_to do |format|
      if @user_scaffold.update(user_scaffold_params)
        format.html { redirect_to @user_scaffold, notice: 'User scaffold was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_scaffold }
      else
        format.html { render :edit }
        format.json { render json: @user_scaffold.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_scaffolds/1
  # DELETE /user_scaffolds/1.json
  def destroy
    @user_scaffold.destroy
    respond_to do |format|
      format.html { redirect_to user_scaffolds_url, notice: 'User scaffold was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_scaffold
      @user_scaffold = UserScaffold.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_scaffold_params
      params.require(:user_scaffold).permit(:first_name, :last_name, :age, :email)
    end
end
