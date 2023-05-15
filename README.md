# Design Patterns in Ecommerce Application (Ruby)

This code is an example of how to apply design patterns in an ecommerce application context using Ruby. The project simulates a simplified ecommerce platform where users can place orders, customize them, and select different shipping options. The purpose of the project is to demonstrate how design patterns can help us to write cleaner, more organized, and more reusable code in complex applications.

The codebase contains three exercises, each one tackling a different aspect of the Order class, which is one of the core classes in the application. The exercises cover topics such as calculating order costs, integrating different shipping methods, and implementing a notification system for free shipping. Each exercise includes a description of the problem, the requirements, and the expected behavior, as well as a possible solution using design patterns.

By working through these exercises, you'll learn how to use some of the most common design patterns in object-oriented programming, such as Decorator, Strategy, and Observer. You'll also see how these patterns can be combined to solve more complex problems and how they can make your code more flexible, extensible, and maintainable over time.

We hope you find this project useful and educational. Happy coding!

# Exercise Context
Suppose we are working on an ecommerce application. In our application, the Order class is one of the main classes in our code, as it represents the orders that users place on the platform.

The current implementation of the Order class is quite large and complex, as it contains many features that allow users to customize their orders, add or remove products, and make payments.

Our kind Product Owner has identified some additional requirements that our users have requested and that we must implement to improve the shopping experience on our platform.

## Exercise 1 
**Calculation of the cost of an order**

The cost of an order is calculated as the sum of the prices of the products that make it up.

The Product Owner has requested that we add these two new functionalities to the system:

- Add the option of a gift wrap for orders, which increases the total cost of the order by 10%.
- Add the option of shipping the order, with a fixed cost of $5,000.

## Exercise 2
**Integrating shipping methods**

The PO has added two new shipping options to our application:

- In-store pickup at no cost
- Express shipping for an additional cost of $8,000

Before "diving headfirst into programming", like good developers, we asked the PO if these shipping methods will use the same provider. The PO informs us that each of the shipping methods will use a different provider.

## Exercise 3
**Free shipping notification**

The Product Owner now requests that the following feature be added: when the total amount of products in the user's shopping cart exceeds $30,000, a message should be displayed notifying the user that they have qualified for free shipping for their order.