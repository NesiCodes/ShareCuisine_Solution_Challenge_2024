# ShareCousine

Shared Food aims to tackle the dual challenge of food waste and food insecurity by providing a platform that connects surplus food donors with individuals or communities in need. Through this innovative solution, donors can easily post listings of surplus food, detailing its type, quantity, and expiration date. Recipients, on the other hand, are empowered with a user-friendly interface to browse available surplus food listings and request packages as per their requirements. 

The platform facilitates seamless communication and coordination between donors and recipients, streamlining the redistribution process to ensure surplus food reaches those who need it promptly. By leveraging technology, Shared Food not only addresses the immediate needs of food-insecure populations but also contributes to global efforts to minimize food waste. This holistic approach not only helps alleviate food insecurity but also promotes sustainability by reducing the environmental impact of wasted food. In essence, Shared Food serves as a catalyst for positive change, fostering a more equitable distribution of food resources and advancing the collective goal of ending hunger worldwide.

## Goals and Targets

ShareCouisine project chooses these United Nations' Sustainable golas and targets:

1. *Goal 2: Zero Hunger*: Shared Food directly contributes to addressing food insecurity by ensuring surplus food reaches those in need, aligning with the broader objective of ending hunger by 2030.

2. *Target 2.1*: Shared Food aims to ensure access to safe, nutritious food for all individuals, including vulnerable populations, by facilitating the redistribution of surplus food resources.

3. *Target 12.3*: Shared Food's focus on minimizing food waste aligns with the target to reduce food losses along production and supply chains. By connecting surplus food donors with recipients, the platform helps mitigate food waste at the retail and consumer levels, contributing to the overall goal of halving per capita global food waste.

### Application Architechture:

Architecture consists of the following:
*Categories per user (who can access the app):*

1. **Donors** (restaurants, shops, individuals, etc.)
2. **Recipients** (Charity organizations, etc.).

**For Donors**:
1. *Post surplus food:* Post real-time listings of surplus food available for donation. Include details such as the type of food, quantity, and expiration date. Donors post food items they wish to donate with relevant information like photos, type of food, quantity, expiration date, etc., and these posts are then visible to the recipients on their respective interface.
2. *View requests:* After viewing recipient posts, donors can respond to food package requests (e.g., one post equals one package) and then the respective donor who has published that package responds with the relevant information about the package and the recipient who requested it (phone number, rating, etc.). The donor then has options to either accept or reject the request. If rejected, they can provide a reason and send it to the recipient, or they can choose to accept it, after which it enters a pending status for the order.

**For Recipients:**
1. *View surplus food posts:* Recipients can view posts from donors and request a package through a button provided.
2. *View pending:* Recipients can view their requests sent to donors along with the respective status (similar to the donor interface).
3. *Notifications page:* An interface where all notifications for the recipient are displayed (e.g., after a request is accepted, a notification is received that the  request was accepted, etc.).
4. *Profile (Recipient):* Same functionality as the donor interface.
Technology used are flutter and firebase

### Technology

For the development of the SharedCouisne platform, we opted for a combination of **Flutter, FlutterFlow, and Firebase. Flutter, Google's UI toolkit**, was chosen for its ability to create natively compiled applications for mobile, web, and desktop from a single codebase, ensuring consistent performance and user experience across different platforms. Flutter's hot reload feature facilitated rapid prototyping and iteration, allowing for efficient development and testing of app features. Additionally, FlutterFlow, a low-code platform built on top of Flutter, was utilized to accelerate the development process further by providing a visual interface for designing UI layouts and workflows. Its drag-and-drop functionality and pre-built components enabled seamless integration of features, saving time and effort in coding repetitive tasks. Firebase, Google's mobile and web application development platform, was selected for its robust backend services, including authentication, real-time database, and cloud storage. Firebase's scalability, security, and ease of integration with Flutter made it an ideal choice for managing user authentication, storing data, and enabling real-time communication between donors and recipients. Overall, leveraging Flutter, FlutterFlow, and Firebase together offered a powerful and efficient solution for building the Shared Food platform, ensuring a smooth user experience and streamlined development process.

## Testing and FeedBack

### Steps Taken:
**1.	Informing the community:**
    •	Reached out to different charity organizations and restaurants in different cities informing them about the initiative we have taken and how it could be implemented through the mobile app.  .
**2.	Test Setup:**
    •	Provided real users with the demo of application and set the objectives
of performance. 
**3.	Feedback Collection:**
    •	Used surveys to collect detailed feedback after each session.
**4.	Analysis:**
  •	Analysed feedback to identify common issues and areas for improvement.

### Specific Feedback Points:
**1.	Not editable account/profile:**
    •	Users over time wanted to change an attribute of their profile, but they found  very disturbing the fact that they couldn’t
**2.	Receivers not being able to cancel accidental request:** 
    •	Receivers by mistake would make a request from a donor and not being able to cancel in real time would make the process more difficult
**3.	Donors not seeing the status of their packages:**
    •	After having their donations requested by receivers, donors were not able to see the quantity of request neither if the delivery was pending/requested or finished.

### Learning and Improvements:
**1.	Editable profiles:**
    •	Profiles now are editable in terms of name, address,  phone number, profile photo and the users are able to change the password
**2.	Cancellable requests:**
    •	Users after making a request can cancel in real-time and adjust the quantity of the order or specify any other detail.
**3.	Updated package status:**
    •	After seeing the requests made by receivers, the donor can change the status the of the requests from pending to finished and also check their history of donations.

### Challenge Faced:
One challenge we faced was implementing a functional, clear and easy to use interface. We needed to ensure the users would easily find what they were looking for and have the process made as easily as possible through animations and custom functions. Also making sure all the data in the database is updated and secure over periods of time.
**Addressing the Issue:**
    •	We decided to use the Flutter packages to design the interface.
    •	Implemented Firebase database and different tools it provided like : Google Authentication( Log in, Create account , Forget password etc.)

# Success and Completion of Solution

## Project's impact

**Cause** 
The app provides a platform for individuals and businesses to post surplus food items for donation.
**Effect**
It enables those in need to access and receive the donated food items, reducing food waste and addressing hunger.

•	How does our solution address the problem we are looking to solve?
**Problem**
Food wastage and hunger coexist; surplus food often goes to waste while people in the community face food insecurity.
**Solution** 
The app connects food donors with recipients, creating a seamless way to share surplus food and address the community's immediate needs.

•	How were some of the goals of our solution evidenced?
**Goals**
Reduce food waste, alleviate hunger, and create a sense of community involvement.
**Evidence**
 Monitoring the number of food items posted, successful matches between donors and recipients, and user engagement within the app.

•	What was the quantifiable data collected?
**Metrics**

	Number of registered users on the app.
	Amount of food items posted for donation.
	Number of successful matches and completed transactions.
	Reduction in food waste .
	User satisfaction and feedback.

•	What tools did we use to help understand our solution's impact?
**Analytics Tools** 
Utilizing analytics tools within the app to track user behavior, engagement metrics, and transaction history.
**Surveys and Feedback**
 Collecting user feedback through surveys to understand their experience and satisfaction levels.
**Data Analysis**
 Regularly analyzing the collected data to identify trends, areas of improvement, and the overall impact on reducing food waste and addressing hunger.


# Scalability / Next Steps

### Feature Enhancements:
•	Incorporating features suggested by users to improve the overall experience.
•	Exploring partnerships with local food-related services to provide additional value, such as recipe suggestions for donated items.

### User Engagement:
Implementing community challenges or events within the app to boost user engagement.
Developing marketing campaigns to raise awareness, encouraging more users to join and actively participate in the food donation ecosystem.

### Accessibility and Inclusivity:
•	Ensuring the app is accessible to users of different backgrounds and abilities.
•	Offering multilingual support and consider user interface adjustments to accommodate a diverse user base.

### Education and Outreach:
•	Integrating educational content within the app to inform users about the impact of their contributions, raising awareness about food waste and hunger.


## Scalability and Technical Architecture:

### Cloud-Based Infrastructure:
•	Transitioning to a cloud-based infrastructure (e.g., AWS, Google Cloud) to handle increased user and data volume efficiently.
•	Utilizing cloud databases to ensure scalability and reliability as the user base expands

### Loading Balancing:
•	Implementing load balancing mechanisms to distribute incoming traffic evenly, ensuring optimal performance during peak usage times.
•	Scaling server resources dynamically to handle varying levels of activity.

# Getting Started

## Prerequisites
To run any Android application built with Flutter you need to configure the enviroments in your machine, you can do this following the the tutorial provided by Google in [Flutter website](https://flutter.dev/)

Flutter SDK
Any IDE with Flutter SDK installed (ie. IntelliJ, Android Studio, VSCode etc)
Knowledge of Flutter

### Clone
Clone this repo to your local machine using:
``` git clone https://github.com/NesiCodes/ShareCuisine_Solution_Challenge_2024.git ``` 

#### Setup
To run the app you need to have an online emulator or a plugged device and run the following command in the root of the application.

Android
``` flutter run ```
iOS (MAC Only)
``` flutter run```


