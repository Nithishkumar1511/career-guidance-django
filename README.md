🎯 Career Path Guidance System

A smart web application that helps users identify their ideal tech career path based on their existing skills, desired roles, and qualifications. Built using **Django** and **MySQL**.

---

🚀 Features

- ✅ Input known tools/technologies
- ✅ Select multiple desired career roles
- ✅ Choose qualification (Bachelor's, Master's, etc.)
- ✅ Compare known vs. required skills
- ✅ Get recommended **Udemy** courses to upskill
- ✅ View companies hiring for the selected roles

---

🛠️ Tech Stack

| Layer       | Technologies Used                  |
|-------------|------------------------------------|
| Backend     | Python, Django                     |
| Frontend    | HTML, CSS                          |
| Database    | MySQL                              |
| Tools       | Git, GitHub                        |

---


🧠 How It Works

1. User enters tools they already know
2. Selects roles they're interested in
3. Backend fetches role requirements from MySQL
4. Shows:
   - ✅ Skills already known
   - 🔍 Missing skills
   - 📚 Recommended Udemy courses
   - 🏢 Hiring companies

---

🛠️ Setup Instructions


# Clone the project
git clone https://github.com/Nithishkumar1511/career-guidance-django.git

# Navigate to the project folder
cd career-guidance-django

# Activate the virtual environment (Windows)
venv\Scripts\activate

# Install required packages
pip install -r requirements.txt

# Run the development server
python manage.py runserver

---
🗄️ Database Setup
Create a MySQL database: career_db

Import the SQL file from db_scripts/career_data.sql

---
📌 Author
👨‍💻 Nithishkumar S
📧 finnnithish@gmail.com
🔗 GitHub | LinkedIn

---
🌐 License
This project is open-source and available under the MIT License.

