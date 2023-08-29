# Techmodal Challenge
This repository contains the modelling and analysis for the Techmodal Mr Haulage Challenge.

## Goals
We ultimately want to inform Mr Haulage on how to best renew his fleet. We do this by either maximising profit or minimising costs.

## Data
We want to allocate the vehicle fleet. The vehicles available come in two sizes:

| **Truck Size**  | **Capacity** | **Driver Cost (per day)** | **Fuel Cost (per day)** | **Unit Cost** | **Loading time** |
| --- | --- | --- | --- | --- | --- | 
| Small  | 1 small box  | 5 | 5 | 2,000 | 1 hour |
| Large  | 4 small boxes, 1 large box  | 20 | 30 | 5,000 | 2 hours |

We allocate the fleet according to order data, stored in `orders.csv`, and the income per delivery of each respective box size:

| **Box Size**  | **Income per delivery** |
| --- | --- |
| Small | 20 |
| Large | 100 |

## Methodology 

We wish to implement two key ideas:

### Forecasting Method
- Our time series is event driven, so we first need to determine the daily order quantity and type  :white_check_mark:
- We will also analyse relationships to determine if there are any other useful predictors ✅
  - <strike> Delivery region could be used </strike> 
  - <strike> Order IDs? (Do some graphs for this) </strike>
- Using this we can implement some time series forecasting method
  
### Optimisation Method
- An optimisation procedure to determine fleet allocation, perhaps in the form of a LP/MIP. 

## Questions for Mr Haulage 
- How often to do you replace your fleet?
- What is the fuel cost per distance, this way we could break your delivery routes down and optimise that as well.


