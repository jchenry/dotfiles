#
# Build tasks for this Dockerfile
#

TAG=jchenry/goshell

include ../Makefile.core

bash:
	docker run --rm -it --privileged  -v /var/run/docker.sock:/var/run/docker.sock $(TAG) bash	


# clean:
 
#     $(MAKE) -f Makefile.common $@
#     rm whatever additional things