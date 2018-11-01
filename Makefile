default: Makefile.coq
	$(MAKE) -f Makefile.coq

Makefile.coq: _CoqProject
	coq_makefile -f _CoqProject -o Makefile.coq

clean: Makefile.coq
	$(MAKE) -f Makefile.coq cleanall
	rm -f Makefile.coq

sercomp: Makefile.coq
	$(MAKE) -f Makefile.coq sercomp

.PHONY: default clean sercomp
