import json
import requests

with open('.githubtoken') as f:
    t = f.read()

project_results = []
res = {'total_count': float('inf')}
page = 1

while len(project_results) < res['total_count']:
    res = requests.get('https://api.github.com/repos/alonitac/atech-devops-june-2023/actions/runs',
                       params={
                           "page": page,
                           "status": "success",
                           "per_page": "100"
                       },
                       headers={
                           "Accept": "application/vnd.github+json",
                           "Authorization": f"Bearer {t}",
                           "X-GitHub-Api-Version": "2022-11-28"
                       })

    res = res.json()
    page += 1
    project_results += res['workflow_runs']


data = [d for d in project_results if d['conclusion'] == 'success']
branches = sorted(set([d['head_branch'] for d in data]))
[print(b) for b in branches]

