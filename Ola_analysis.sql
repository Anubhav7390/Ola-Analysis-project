use ola;

select *
from bookings;

/* Retrieve all successful bookings: */

select *
from bookings
where Booking_status = "Success";

/* Find the average ride distance for each vehicle type: */

select vehicle_type , round(avg(ride_distance),2) as avg_ride_distance
from bookings
group by vehicle_type;

/* Get the total number of cancelled rides by customers: */

select count(*)
from bookings
where booking_status = "Canceled by Customer";

/*List the top 5 customers who booked the highest number of rides:*/

select customer_id, count(booking_id) as total_rides
from bookings
group by customer_id
order by total_rides desc
limit 5;

/* Get the number of rides cancelled by drivers due to personal and car-related issues:*/

SELECT COUNT(*) 
FROM bookings 
WHERE canceled_Rides_by_Driver = 'Personal & Car related issue';

/*  Find the maximum and minimum driver ratings for Prime Sedan bookings:*/

select max(Driver_Ratings) as max_driver_rating, min(Driver_Ratings) as min_driver_rating
from bookings
where Vehicle_type = "Prime Sedan";

/* Retrieve all rides where payment was made using UPI:*/

select *
from bookings
where payment_method = "UPI";

/*  Find the average customer rating per vehicle type: */

select vehicle_type, round(avg(customer_rating),4) as avg_cust_rating
from bookings
group by vehicle_type;

/* Calculate the total booking value of rides completed successfully: */

select sum(booking_value) as total_booking_value
from bookings
where booking_status = "Success";

/*  List all incomplete rides along with the reason: */


SELECT Booking_ID, Incomplete_Rides_Reason
FROM bookings
WHERE Incomplete_rides ='Yes';