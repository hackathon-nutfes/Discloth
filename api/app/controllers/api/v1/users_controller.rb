class Api::V1::UsersController < ApplicationController
  #before_action :authenticate_api_user!

  def index
    @users = User.all
    render json: { status: 'SUCCESS', message: 'Loaded users', data: @users }
  end

  def show
    @user = current_api_user
    render json: { data: @user }
  end

  def get_user_items
    #@user = current_api_user
    @user = User.find(1)
    @items = @user.items
    data = []
    set = []
    for i in @items
      @id = i.id
      @color = i.color.name
      @design = i.design.name
      @price = i.price.name
      @gender = i.gender.name
      @size = i.size.name
      @season = i.season.name
      @kind = i.kind.name
      @brand = i.brand
      set = {
        id: @id,
        color: @color,
        design: @design,
        price: @price,
        gender: @gender,
        size: @size,
        season: @season,
        kind: @kind,
        brand: @brand
      }
      data << set
    end
    render json: data 
  end
end