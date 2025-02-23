Try To devide HLD in 4 section
0. Try to design based on Customer User Journey 
    - Functional Requirement (MVP)
        - List down functionality based on User/Admin
    - Non Functional Requirement
        - Consistency
        - Availabilty
        - Latency
        - Concurrency
1. Estimate & Constraint
 - Ask for User base going to use the system
 - Number of query per second
 - Total Data which you going to store
 - Is Sharding Required
 - Is System is Read/Write Heavy
3. Design Goals
 - Is Availibity more important than consitency?
- Latency
4. APIs


MVP - Functional Requirement

// Register
// Sign up
// Logout
// Get Available Flights for search date
// Should we follow any shorting in list?
// Book Flight
// Cancel Flight
// Window Checking


// No Sharding
// Balance READ + WRITE
// Consitency over availability
// So might me latency in response




