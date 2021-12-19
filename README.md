# Kong-externship
curl -i -X POST \
 --url http://localhost:8000/ \
 --data 'name='my-custom-plugin' \
 --data 'environment=deployment' \
 --data 'server.host=localhost' \
 --data 'server.port=8000 
 
 it still needs fixing as i am getting {"fields":{"name":"plugin 'api-version' not enabled; add it to the 'plugins' configuration property"},"code":2,"message":"schema violation (name: plugin 'api-version' not enabled; add it to the 'plugins' configuration property)","name":"schema violation"}
 even though I have updated kong.conf file and added localhost to server and my-custom-plugin to plugind
 
