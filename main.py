from bottle import default_app, route, view
import requests
import json

API_URL = 'https://api.hh.ru/vacancies'

def make_salary(sal):
    if sal is None:
        return None
    else:
        smin = sal['from'] or '...'
        smax = sal['to'] or '...'
        return '{}-{} {}'.format(smin, smax, sal['currency'])

@route('/')
@view('vacancies')
def vacancies_view():
    url = API_URL + '?specialization=1.221&industry=7.540&industry=7.541&area=4&text=Python&search_field=name&search_field=description'
    response = requests.get(url)
    data = json.loads(response.text)

    vacs = [{
        'name': i['name'],
        'requirement': i['snippet']['requirement'],
        'responsibility': i['snippet']['responsibility'],
        'salary': make_salary(i['salary']),
        'employer': i['employer']['name'],
        'url': i['alternate_url']
        } for i in data['items']
    ]

    return {'vacancies': vacs}

application = default_app()
