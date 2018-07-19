class AccountsController < ApplicationController

def index
  @account = Account.all
end

def show
  @account = Account.find(params[:id])
end

end
