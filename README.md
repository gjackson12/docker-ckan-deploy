# Picturae CKAN Deploy

To run locally:

Checkout
```{r, engine='bash', count_lines}
git clone https://github.com/picturae/docker-ckan-deploy.git
```

Run docker-compose up with links to paths with data
```{r, engine='bash', count_lines}
CKAN_DATA_VOLUME=<%absolute_path_to_ckan_local_data%> POSTGRES_DATA_VOLUME=<%absolute_path_to_postgres_local_data%> docker-compose up
```

- CKAN_DATA_VOLUME is the path where CKAN will save it's data
- POSTGRES_DATA_VOLUME is the path where postgres will save it's data

Visit [CKAN Documentation](http://docs.ckan.org/en/latest/maintaining/installing/index.html) for more info about how to interact on admin level wit ckan.







