build:
	docker build -t ianblenke/deisctl .

install:
	docker run -t -i ianblenke/deisctl /installer --endpoint=http://172.16.42.1:4001 install platform
	docker run -t -i ianblenke/deisctl /installer --endpoint=http://172.16.42.1:4001 start platform
