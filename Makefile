IPADDR:=$(shell ipconfig getifaddr en0)

build: Dockerfile
	docker build . -t grt

run: 
	docker run -e DISPLAY=${IPADDR}:0 -it -v ~/grt:/opt/grt grt wine /opt/grt/GordonsReloadingTool.exe	

socat:
	./socat_xquartz.sh &

.PHONY: build run socat
