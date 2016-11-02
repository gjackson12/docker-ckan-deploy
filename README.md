<h2>Picturae CKAN Deploy</h2>

Welcome to the Picturae CKAN installation tools developed for the NDE Hackalod 2016.

<hr>

<h3>Local installation via docker</h3>
Checkout
```{r, engine='bash', count_lines}
git clone https://github.com/picturae/docker-ckan-deploy.git
```

Create docker image for ckan
```
cd docker-ckan-dcat
docker build -t picturae/ckan-dcat:0.0.1 .
```



Run docker-compose up with links to paths with data
```
cd ..
CKAN_DATA_VOLUME=<%absolute_path_to_ckan_local_data%> POSTGRES_DATA_VOLUME=<%absolute_path_to_postgres_local_data%> docker-compose up
```

- CKAN_DATA_VOLUME is the path where CKAN will save it's data
- POSTGRES_DATA_VOLUME is the path where postgres will save it's data

Visit [CKAN Documentation](http://docs.ckan.org/en/latest/maintaining/installing/index.html) for more info about how to interact on admin level wit ckan.

Some administrator commands need to be run in the ckan virtual environment. Activated with:
```
. /usr/lib/ckan/default/bin/activate
```

You should now have a running ckan on http://localhost
<hr>
To get things going you still need to do the following:

<h4>Manual setup</h4>
* when ckan is set up
* add admin user (inside virtual env)
```
paster sysadmin add <%desired_usename%> -c /etc/ckan/default/development.ini
```
* login in ckan and add organisation
* add datasets for that organisation

<h4>DCAT</h4>
This CKAN instance is equiped with the harvester and dcat plugin. This adds dcat endpoints to this ckan catalog and datasets.
This enables other instances to harvest these datasets.

The dcat plugin also enables this instance to harvest datasets form other ckan instances.
See links below for more information about these extensions.


<h4>Used extensions</h4>
* https://github.com/ckan/ckanext-harvest
* https://github.com/ckan/ckanext-dcat

<h4>Used docker images</h4>
See Dockerfile in /docker-ckan-dcat and docker-compose.yml

* https://github.com/picturae/docker-ckan, https://hub.docker.com/r/picturae/ckan/
* https://github.com/picturae/docker-ckan-solr, https://hub.docker.com/r/picturae/ckan-solr
* https://github.com/picturae/docker-ckan-postgres, https://hub.docker.com/r/picturae/ckan-postgres


