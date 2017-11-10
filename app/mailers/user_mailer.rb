class UserMailer < ApplicationMailer
  def order_placed(order)
    @order = order
    mail(to: order.email, subject: "order #{order.id} placed.", order: order)
  end
end
