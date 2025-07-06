CREATE DATABASE IF NOT EXISTS career_db;
USE career_db;

CREATE TABLE IF NOT EXISTS career_data (
    id INT AUTO_INCREMENT PRIMARY KEY,
    role VARCHAR(255),
    required_skills TEXT,
    companies TEXT,
    udemy_titles TEXT,
    udemy_links TEXT
);

INSERT INTO career_data (role, required_skills, companies, udemy_titles, udemy_links) VALUES
('Frontend Developer', 'HTML,CSS,JavaScript', 'Flipkart,Zomato,Paytm', 'HTML/CSS Mastery,JavaScript for Beginners', 'https://www.udemy.com/course/html,https://www.udemy.com/course/js'),
('Backend Developer', 'Python,Django,MySQL', 'Amazon,TCS,Zoho', 'Python Web Backend,Django Bootcamp', 'https://www.udemy.com/course/backend,https://www.udemy.com/course/django'),
('Data Analyst', 'Excel,SQL,PowerBI,Pandas', 'Accenture,Deloitte,Wipro', 'Excel for Data,SQL for Analysis,PowerBI Projects', 'https://www.udemy.com/course/excel,https://www.udemy.com/course/sql,https://www.udemy.com/course/powerbi'),
('AI/ML Engineer', 'Python,Numpy,Pandas,Scikit-learn,TensorFlow', 'Google,OpenAI,HuggingFace', 'Machine Learning A-Z,TensorFlow with Python', 'https://www.udemy.com/course/ml,https://www.udemy.com/course/tensorflow'),
('DevOps Engineer', 'Linux,Docker,Jenkins,AWS', 'Infosys,Cisco,RedHat', 'Docker for DevOps,Jenkins CI/CD,AWS for Beginners', 'https://www.udemy.com/course/docker,https://www.udemy.com/course/jenkins,https://www.udemy.com/course/aws'),
('Web Developer', 'HTML,CSS,JavaScript,Python,Django', 'Freshworks,Mindtree,Cognizant', 'Full Stack Web Development,Django Web Projects', 'https://www.udemy.com/course/webdev,https://www.udemy.com/course/djangoweb'),
('Mobile App Developer', 'Flutter,Dart,Java,Kotlin', 'Swiggy,Byjus,UrbanCompany', 'Flutter for Beginners,Android Development with Java', 'https://www.udemy.com/course/flutter,https://www.udemy.com/course/android'),
('Cybersecurity Analyst', 'Networking,Linux,Burpsuite,Nmap', 'EY,KPMG,HackerOne', 'Cyber Security Fundamentals,Ethical Hacking 101', 'https://www.udemy.com/course/cyber,https://www.udemy.com/course/hacking');
