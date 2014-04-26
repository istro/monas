class SubscribersController < ApplicationController
  def new
    @sub = Subscriber.new
  end

  def create
    respond_to do |f|
      f.json {
        sub = Subscriber.new sub_params
        if sub.save
          MonasMailer.confirmation(sub).deliver
          MonasMailer.notification(sub).deliver
          render json: sub
        else
          render json: { errors: sub.errors }, status: :unprocessable_entity
        end
      }
    end
  end

  private

  def sub_params
    params.require(:subscriber).permit(:name, :email, :favorite_recipe)
  end
end
