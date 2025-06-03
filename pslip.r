# Load necessary library
set.seed(123)  # For reproducibility

# Create the workers list dynamically
genders <- c("Male", "Female")
num_workers <- 400

# Initialize list
workers <- list()

# Run a for loop to generate worker data dynamically
for (i in 1:num_workers) {
  staff_id <- sprintf("STAFF%04d", i) # zeropadding - STAFF0001 to STAFF0400
  gender <- sample(genders, 1) # the sample() function is the equivalent of Random class in python
  salary <- sample(5000:35000, 1)
  workers[[i]] <- list(StaffID = staff_id, Gender = gender, Salary = salary)
}

# Generate payment slips and add the conditional logic
for (worker in workers) {
  tryCatch({
    staff_id <- worker$StaffID
    gender <- worker$Gender
    salary <- worker$Salary
    employee_level <- "N/A"
    
    # Now, add the conditional logic here
    if (salary > 10000 && salary < 20000) {
      employee_level <- "A1"
    }
    if (salary > 7500 && salary < 30000 && gender == "Female") {
      employee_level <- "A5-F"
    }
    
    # Print payment slip. Use \n to move to next line
    cat("Payment Slip\n")
    cat("-------------\n")
    cat("Staff ID      :", staff_id, "\n")
    cat("Gender        :", gender, "\n")
    cat("Weekly Salary : $", salary, "\n")
    cat("Employee Level:", employee_level, "\n")
    cat("------------------------------\n\n")
  }, error = function(e) {
    cat("Error printing payment slip for worker:", conditionMessage(e), "\n")
  })
}
