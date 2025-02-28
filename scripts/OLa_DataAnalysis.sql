create database Ola;
use Ola;
select * from bookings;
-- 1. Retrieve all successful bookings:
select * from bookings
where Booking_Status = 'Success';

--  2. Find the average ride distance for each vehicle type:
select vehicle_type, avg(ride_distance) as Avg_ride_distance from bookings
group by vehicle_type;

-- 3. Get the total number of cancelled rides by customers:
select count(*) as Total from bookings
where Booking_Status = 'CanceledbyCustomer';

-- 4. List the top 5 customers who booked the highest number of rides:
select customer_ID, count(Booking_ID) as Total_rides from bookings
group by customer_ID 
order by Total_rides desc
limit 5;

--  5. Get the number of rides cancelled by drivers due to personal and car-related issues:
select count(*) as Total from bookings
where Canceled_Rides_by_Driver = 'Personal&Carrelatedissue';

-- 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
select max(Driver_ratings) as Max_DriverRating, min(Driver_ratings) Min_DriverRatingas from bookings
where Vehicle_Type = 'PrimeSedan';

--  7. Retrieve all rides where payment was made using UPI:
select * from bookings
where Payment_Method = 'UPI';

-- 8. Find the average customer rating per vehicle type:
select vehicle_type, round(avg(customer_rating),2) as avg_customer_rating from bookings
group by vehicle_type;

-- 9. Calculate the total booking value of rides completed successfully:
select Booking_Status, sum(Booking_Value) as total_successful_value from bookings
where Booking_Status = 'Success';

-- 10. List all incomplete rides along with the reason:
select Booking_ID, Incomplete_Rides_Reason from bookings
where Incomplete_Rides = 'Yes';