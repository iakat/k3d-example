default: up hammer

## default
up:
	docker-compose up -d
hammer:  # basic way to retry until applying works
	bash hack/hammer.sh
apply:  # used by hack/hammer.sh
	# try installing kustomize if it's not there
	kustomize || make install-kustomize
	# build the manifests and apply them using kubectl in the container
	kustomize build manifests/overlays/local | docker-compose exec -T server kubectl apply -f-

## debugging
logs:
	docker-compose logs -f 
rm:
	docker-compose stop || true
	docker-compose rm -f -v || true
	docker volume rm k3d-juice-shop_k3s-server || true
install-kustomize:
	curl -L https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh | bash
	sudo mv -n kustomize /usr/local/bin

# day2 maintenance
update-k3d-docker-compose:
	curl -L "https://raw.githubusercontent.com/k3s-io/k3s/master/docker-compose.yml" > docker-compose.yml
update: update-k3d-docker-compose
