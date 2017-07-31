class ProductsController < ApplicationController

  def index
    @cart = cart
  end

  def add
    cart << params[:product]
    redirect_to :root
  end

end

### This lesson focused on using cookies and sessions. First we started out with the creation of a controller that included two methods, one an index and one an add. From here the routes where written. The root was set to the controller method of the product. Note again that the root was set to the controller method. root 'product#index' and then the add was a post method that looked like post '/' <<--- this post was used in the form. So the form just need to map to the url in config, from there it will pass it to the controller. The form just has to get it to the routes and then the routes will pass it to the controller. Okay. So back to the index view. We knew we wanted to have a form to take desired products and a a ways to display the carts contents, which is an array in the sessions hash. So in the view, first the form. Since strong params are not needed a form_tag was used and mapped to the routes at / with a method of post. Actually, I didn't have to specify the method, because post is assumed by default, but the route was specified to connect the with the controller and its action. On the form, there was a text_field_tag for :product, that passed the params[:product], and that was it. It had a submit tag and the button text that they wanted. From there, the params where passed to the routes and then to the controller and the action. from the controller action of add, I accessed the params[:product] and assigned it to an item a