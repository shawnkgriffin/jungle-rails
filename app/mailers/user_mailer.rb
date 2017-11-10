class UserMailer < ApplicationMailer
  def order_placed(order)
    mail(to: order.email, subject: "Order #{order.id} placed." )
  end
end
