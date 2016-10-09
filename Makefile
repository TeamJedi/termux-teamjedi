all:
	./gnupg_generate.sh
	ln -sf `pwd`/gpg ~/.gnupg
	find debs -name '*.deb' | xargs -l1 -i% reprepro -V -b . -P optional -S utils -C main includedeb stable %

clean:
	rm -fr db/ pool/ dists/

deleteme:
	docker run -e URI=https://teamjedi.github.io/termux-teamjedi \
             	-e KEYSERVER=keyserver.ubuntu.com \
		-e APTLY_ARCHITECTURES=arm \
             	-v gnupg:/.gnupg \
             	-v debs:/debs \
             	spotify/debify
