FROM picturae/ckan:2.5.2

RUN sudo apt-get update && sudo apt-get --assume-yes install redis-server

#Harvester
#enter python virtual env, chain commands with && because RUN runs each command in separate shell
RUN . /usr/lib/ckan/default/bin/activate \
&& pip install -e git+https://github.com/ckan/ckanext-harvest.git#egg=ckanext-harvest \
&& cd /usr/lib/ckan/default/src/ckanext-harvest/ \
&& pip install -r pip-requirements.txt \
&& pip install -r dev-requirements.txt \
&& deactivate

#DCAT
#enter python virtual env, chain commands with && because RUN runs each command in separate shell
RUN . /usr/lib/ckan/default/bin/activate \
&& pip install -e git+https://github.com/ckan/ckanext-dcat.git#egg=ckanext-dcat \
&& pip install -r /usr/lib/ckan/default/src/ckanext-dcat/requirements.txt \
&& deactivate

ADD ./development.ini /etc/ckan/default/development.ini

WORKDIR /
ADD ./start_services.sh /start_services.sh
RUN sudo chmod +x ./start_services.sh
CMD ./start_services.sh
