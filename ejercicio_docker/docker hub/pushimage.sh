docker login -u {{username}} -p {{password}}
docker image build -t nodehello .
docker tag nodehello {{username}}/nodehello:firsttry
docker push {{username}}/nodehello
docker image ls
docker system prune -af
docker run -d --rm --name nodehello -p 3000:3000 \
   {{username}}/nodehello:firsttry