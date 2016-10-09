all:
	./gnupg_generate.sh
	ln -sf `pwd`/gpg ~/.gnupg
	find debs -name '*.deb' | xargs -l1 -i% reprepro -V -b . -P optional -S utils -C main includedeb stable %

clean:
	rm -fr db/ pool/ dists/

