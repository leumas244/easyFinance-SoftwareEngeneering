# easyFinance - Software Requirements Specification

Version 1.1
 
Revision History\
			
| Date       | Version | Description   | Author        |
|------------|---------|---------------|---------------|
| 10/16/2019 | 0.9     | First draft   | Nico Rahm     |
| 10/20/2019 | 1.0     | Second draft  | Nico Rahm     |
| 10/29/2019 | 1.1     | Third draft   | Dominik Lange |
| 12/08/2019 | 1.2     | Fourth draft  | Dominik Lange |

 
## Table of Contents

- [1. Introduction](#1-introduction)
  * [1.1 Purpose](#11-purpose)
  * [1.2 Scope](#12-scope)
  * [1.3 Definitions, Acronyms, and Abbreviations](#13-definitions-acronyms-and-abbreviations)
  * [1.4 References](#14-references)
  * [1.5 Overview](#15-overview)
- [2. Overall Description](#2-overall-description)
- [3. Specific Requirements](#3-specific-requirements)
  * [3.1 Functionality and UseCases](#31-functionality-and-usecases)
    + [3.1.1 Set bank balance](#311-set-bank-balance)
    + [3.1.2 Show diagrams](#312-test)
    + [3.1.3 Add categories](#313-add-categories)
    + [3.1.4 Note payments/transactions](#314-note-payments/transactions)
    + [3.1.5 Set alerts for balance limits & push notifications](#315-set-alerts-for-bank-balance-limits-&-push-notifications)
    + [3.1.6 Show single diagram on the homepage](#316-show-single-diagram-on-the-homepage)
    + [3.1.7 Insert the “homepage” button](#317-insert-the-"homepage"-button)
    + [3.1.8 Insert the “settings” button](#318-insert-the-"settings"-bottun)
    + [3.1.9 Create the starting tutorial](#319-create-the-starting-tutorial)
    + [3.1.10 Implement the "Settings](#3110-implement-the-"settings")
    + [3.1.11 Requirement description](#3111-requirement-description)
  * [3.2 Usability](#32-usability)
  * [3.3 Reliability](#33-reliability)
    + [3.3.1 Availability](#331-availability)
    + [3.3.2 Mean Time Between Failures](#332-mean-time-between-failures)
    + [3.3.3 Mean Time To Repair](#333-mean-time-to-repair)
  * [3.4 Performance](#34-performance)
    + [3.4.1 Capacity](#341-capacity)
    + [3.4.2 Resources](#342-resources)
  * [3.5 Supportability](#35-supportability)
    + [3.5.1 Comments](#351-comments)
    + [3.5.2 Documentation](#352-documentation)
  * [3.6 Design Constraints](#36-design-constraints)
    + [3.6.1 Design](#361-design)
    + [3.6.2 Database](#362-database)
    + [3.6.3 Language](#363-language)
    + [3.6.4 Architecture](#364-architecture)
  * [3.7 On-line User Documentation and Help System Requirements](#37-on-line-user-documentation-and-help-system-requirements)
  * [3.8 Purchased Components](#38-purchased-components)
  * [3.9 Interfaces](#39-interfaces)
    + [3.9.1 User Interfaces](#391-user-interface)
    + [3.9.2 Hardware Interfaces](#392-hardware-interfaces)
    + [3.9.3 Software Interfaces](#393-software-interfaces)
    + [3.9.4 Communications Interfaces](#394-communications-interfaces)
  * [3.10 Licensing Requirements](#310-licensing-requirements)
  * [3.11 Legal, Copyright, and Other Notices](#311-legal-copyright-and-other-notices)
  * [3.12 Applicable Standards](#312-appicable-standards)
- [4. Supporting Information](#4-supporting-information)


# Software Requirements Specification 
## 1. Introduction

easyFinance is a HTML based finance management app using a relational SQL database as Backend. It is used to store all information about the payments the user did. In this document all requirements for the backend will be specified. 
### 1.1	Purpose
The backend of easyFinance is used to store all information about the payments and transactions a user did. All information will be labeled with a timestamp and category to sort and get them into charts to visualize the actual finance status.
### 1.2	Scope
The backend includes the database and the calculations that will be needed to visualize the status and other graphs.
### 1.3	Definitions, Acronyms, and Abbreviations
Database: SQL database
### 1.4	References
This document refers to all UseCase documents:
  * [set bank-balance],[29.10.2019],published on github (linked in chapter 3.1.1)
  * [show diagrams],[29.10.2019],published on github (linked in chapter 3.1.1)
### 1.5	Overview
In the following all technical requirement will be specified. It is organized as defined in the table of contents.
## 2. Overall Description
Our project is an app that makes it possible and comfortable to manage all financial transactions. It is generally intended for private use.
The basic themes are to...
  * capture  every payment (automatically)
  * capture the income
  * get an overview with dashboards, diagrams and individual notifications

Every payment is sorted into categories which can be created individually by the user himself. That makes it easy to manage several fields where one's money flows to. Moreover, we will try to automatically insert transactions from online banking and paypal into the app - if it's possible for us.
The app automatically creates graphs, tables, every kind of chart and even notifications – due to the user’s wish. Those will show the user's money earned and spent over time. It will notify the user by passing individual conditions like e.g. "no money left" or "half of the monthly income is spent".
In general, easyFinance gives the user an individual overview about his/her finance and optimizes the money-spending-behavior, showing the user where to save money.

## 3. Specific Requirements 
### 3.1	Functionality and UseCases
#### 3.1.1 Set bank balance
On the first use, the current bank balance has to be set in the app.
Therefore, a button, called “adapt bank-balance”, can be clicked in order to link the user to a new page on which it is possible to insert a float number in a casket.
With another click on a “save” button, the user gets back to the start page on which the current bank balance will be shown.

See more: https://github.com/leumas244/easyFinance-SoftwareEngeneering/blob/master/UseCases/second%20(add%20bankbalance)/UCD-bankbalance.md

#### 3.1.2 Show diagrams
There is a possibility in the app to see several individual diagrams about the user’s financial state.
With the button “show diagram”, the system loads a new page on which the user can select/click on the wished diagrams to be shown.
The system requests the needed data from the data bank and draws the clicked diagrams.

See more: https://github.com/leumas244/easyFinance-SoftwareEngeneering/blob/master/UseCases/first%20(show%20diagrams)/UCD-diagram.md

#### 3.1.3 Add categories
The user can create his own transaction-categories, beside the standard ones. Later on, payments can be assigned to those categories.
#### 3.1.4 Note payments/transactions
It will be possible to manually note every payment and assign it to a category
#### 3.1.5 Set alerts for balance limits & push notifications
#### 3.1.6 Show single diagram on the homepage
The user can select hos favorite diagram to be shown on the homepage/overview
#### 3.1.7 Insert the “homepage” button
There will be a home button which leads the user to the home page (from everywhere)./ We decided us to implement a toolbar which will always be shown. The toolbar will be located at the bottom of the app and will provide a small number of buttons which leads the user to every main page.

See more: https://github.com/leumas244/easyFinance-SoftwareEngeneering/tree/master/UseCases/7_8_toolbar

#### 3.1.8 Insert the “settings” button
There will be a setting button which leads the user to the settings./ We decided us to implement a toolbar which will always be shown. The toolbar will be located at the bottom of the app and will provide a small number of buttons which leads the user to every main page.

see more: https://github.com/leumas244/easyFinance-SoftwareEngeneering/tree/master/UseCases/7_8_toolbar

#### 3.1.9 Create the starting tutorial
There will be a tutorial on the first start of the app which can be repeated several times
#### 3.1.10 implement the "Settings"
On the setting, the user can individualize his app.
#### 3.1.11 Requirement description
During development progress, the following tools will be in use:
  * Android studio for the emulation
  * "Flutter" framework
  * Visual Studio Code as IDE
  * "dart" as programming language
  * Github
  * Youtrack

### 3.2	Usability
Starting the app the first time, the user will be guided through a tutorial wich gives information about the main features of the app. The duration of that tutorial will be like one to three minutes.
After the start sequence, the user knows each function and is, due to the comfortable GUI, an expert after one hour int the worst case. 
The professional use of that app does not require any previous knowledge in finance tools.

### 3.3	Reliability 
#### 3.3.1 Availability
The backend and database needs to be available 99.0% of the year. This makes a maximum downtime of 3.65 days per year. The front end the frontend needs to be available 100% of the year. If currently no data can be shown in case of a backend-unavailability, it will notify the user.
#### 3.3.2 Mean Time Between Failures
The MTBF is specified to at least 720h.
#### 3.3.3 Mean Time To Repair
The maximum MTTR is guaranteed to 24h.

### 3.4	Performance
#### 3.4.1 Capacity
The Database should be abled to handle up to 4,000 entries with an max. age of three years.
#### 3.4.2 Resources
The database should not use more than 100 MB in the non volatile memory and 20 MB in the RAM.
The calculating unit is not allowed to use more than 10 MB in the non volatile memory and RAM.
### 3.5	Supportability
#### 3.5.1 Comments
The code needs to be well documented with comments per class and function as well an interfaces and key lines.
#### 3.5.2 Documentation
There will be a documentation about all functions and their position in the whole code. 
### 3.6	Design Constraints
#### 3.6.1 Design
The app design will follow a simple but modern structure. In order to achieve an individual and optimal look, connected to a comfortable use, we will offer a lot of possibilities to individualize settings, shown diagrams, sorting-categories and notifications.
#### 3.6.2 Database
As database a relational SQL database will be used.
#### 3.6.3 Language
As coding language JavaScript and TypeScipt will be used.
#### 3.6.4 Architecture
The Backend will be only logical separated from the frontend. The HTML code from frontend and script code from the Backend will be implemented in the same files.
### 3.7	On-line User Documentation and Help System Requirements
There will be a starting tutorial which can be repeated several times, see functionalities.
### 3.8	Purchased Components
There will be no Purchased Components. All used frameworks and languages are open source based.
### 3.9	Interfaces
#### 3.9.1 User Interfaces
The user interface will be realized by a GUI, implemented at the frontend.
The code will be written with java.
#### 3.9.2 Hardware Interfaces
No dedicated hardware interface is needed.
#### 3.9.3 Software Interfaces
There needs to be a SQL interface between the calculating unit and the SQL database. Also, there must be an interface that enables the calculating Unit to transfer data between backend and frontend.
#### 3.9.4 Communications Interfaces
There is no communication between any devices needed
### 3.10 Licensing Requirements
easyFinance is available under free License. It will be financed by ad.
### 3.11 Legal, Copyright, and Other Notices
easyFinance is copyright by easyFinance Ltd. in 2019
### 3.12 Applicable Standards
Nothing to note yet
## 4. Supporting Information
  * Table of contents
  * Index
  * Appendices
