import random

# Create the workers list dynamically
workers = []
genders = ['Male', 'Female']

try:
    for i in range(1, 401):
        staff_id = f"STAFF{i:04d}"  # STAFF0001 to STAFF0400
        gender = random.choice(genders)
        salary = random.randint(5000, 35000)  # Salary between 5,000 and 35,000
        workers.append([staff_id, gender, salary])

    # Generate payment slips
    for worker in workers:
        try:
            staff_id, gender, salary = worker
            employee_level = "N/A"  # Default level

            # Apply conditional logic
            if 10000 < salary < 20000:
                employee_level = "A1"
            if 7500 < salary < 30000 and gender == "Female":
                employee_level = "A5-F"

            # Print the payment slip here
            print(f"Payment Slip")
            print(f"-------------")
            print(f"Staff ID       : {staff_id}")
            print(f"Gender         : {gender}")
            print(f"Weekly Salary  : ${salary}")
            print(f"Employee Level : {employee_level}")
            print("-" * 30)

        except Exception as e:
            print(f"Error generating payment slip for worker {worker}: {e}")

except Exception as e:
    print(f"Error generating worker list: {e}")
