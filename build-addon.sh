echo "Building $1..."
docker run \
	--rm \
	--privileged \
	-v ~/.docker:/root/.docker \
	-v /var/run/docker.sock:/var/run/docker.sock:ro \
	-v $(pwd)/$1:/data \
	homeassistant/amd64-builder \
		--all \
		-t /data
