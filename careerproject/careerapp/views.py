from django.shortcuts import render
import pymysql

def index(request):
    return render(request, 'careerapp/index.html')

def result(request):
    if request.method == 'POST':
        user_tools = request.POST.get('tools', '')
        user_tools_set = set([tool.strip().lower() for tool in user_tools.split(',') if tool.strip()])

        selected_roles = request.POST.getlist('roles')
        qualification = request.POST.get('qualification', 'Not Provided')

        conn = pymysql.connect(
            host='localhost',
            user='root',
            password='33803380finn',  # ✅ Your MySQL password
            db='career_db'
        )
        cursor = conn.cursor()

        results = []

        for role in selected_roles:
            cursor.execute("SELECT required_skills, companies, udemy_titles, udemy_links FROM career_data WHERE role=%s", (role,))
            data = cursor.fetchone()
            if data:
                required_skills = set([skill.strip().lower() for skill in data[0].split(',')])
                missing_skills = required_skills - user_tools_set
                companies = [c.strip() for c in data[1].split(',')]
                course_titles = [t.strip() for t in data[2].split(',')]
                course_links = [l.strip() for l in data[3].split(',')]
                courses = list(zip(course_titles, course_links))

                results.append({
                    'role': role,
                    'known_skills': list(user_tools_set & required_skills),
                    'missing_skills': list(missing_skills),
                    'companies': companies,
                    'courses': courses
                })

        conn.close()

        return render(request, 'careerapp/result.html', {
            'results': results,
            'qualification': qualification,
            'user_tools': list(user_tools_set),
        })

    return render(request, 'careerapp/index.html')
