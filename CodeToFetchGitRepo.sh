!#/bin/bash

token="$2"

# Authentication
curl --request GET \
--url "https://api.github.com/octocat" \
--header "Authorization: Bearer $token" \
--header "X-GitHub-Api-Version: 2022-11-28"

org="$1"

# Hit the API and get the Repository Name
python3 << END

import requests
from box import Box

OrganizationName="$org"

url = f"https://api.github.com/orgs/{OrganizationName}/repos"

response = requests.get(url)
print(response.status_code)
data = response.json()
js =  Box(data[0])
print("Repo_Name = "+js.name)

END



