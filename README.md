# Worker Payment Slip Generator (Nexford Assignment)

This project contains two scripts — one in **Python** and one in **R** — that dynamically generate a list of 400 workers with staff IDs, genders, and salaries, and then print out weekly payment slips with conditional logic applied to determine employee levels.

---

## 📁 Contents

- `pslip.py` – Python script
- `pslip.R` – R script
- `README.md` – Instructions and documentation

---

## ⚙️ Prerequisites

### Python
- Python 3.13 or higher
- No external libraries required (uses only built-in `random`)

### R
- R 4.0 or higher
- No external packages required

---

## ▶️ How to Run

### 🐍 Python

1. Open a terminal or command prompt.
2. Navigate to the folder containing `pslip.py`.
3. Run the script:
   ```bash
   python3 pslip.py
   ```

#### What the script does:

* Dynamically generates 400 workers.
* Assigns a gender (Male or Female) and a salary between \$5,000 and \$35,000.
* Prints a payment slip for each worker.
* Assigns **Employee Level** based on:

  * Salary between \$10,000 and \$20,000 → Level `A1`
  * Female workers with salary between \$7,500 and \$30,000 → Level `A5-F`
* Includes basic exception handling.

---

### 📊 R

1. Open a terminal or command prompt.
2. Navigate to the folder containing `pslip.r`.
3. Run the entire script:

   ```r
   Rscript pslip.r
   ```

#### What it does:

* Similar logic to the Python script.
* Uses `sample()` to randomly assign gender and salary.
* Uses `sprintf()` to format Staff IDs.
* Applies conditional logic and prints formatted payment slips.
* Uses `tryCatch` for error handling.

---

## 📌 Notes

* The gender is randomly chosen between "Male" and "Female".
* Staff IDs are automatically generated in the format `STAFF0001` to `STAFF0400`.
* Salaries are randomly assigned within a realistic range.


---

## 📄 License

This project is open source and free to use for educational or internal business purposes.

---

## 💬 Contact

For improvements, feel free to open a pull request on my GitHub account or contact me directly - josephdokhare@gmail.com


