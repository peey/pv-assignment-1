FSTAR_HOME=../..

include ../Makefile.include

include $(FSTAR_HOME)/ulib/ml/Makefile.include

.PRECIOUS: build/% # keep built files  
build/%: %.fst
	mkdir -p bin
	mkdir -p build
	mkdir -p $@_d
	$(FSTAR) $(FSTAR_DEFAULT_ARGS) --odir $@_d --codegen OCaml --extract '$*' $*.fst --record_hints
	$(OCAMLOPT) $@_d/$*.ml -o build/$*
	echo "compilation successful; please run using ./$@"

build/%/clean: %.fst
	rm -rf build/$*_d *~ $(@D)

build/%/run: build/%
	./build/$*

clean:
	rm -rf build *~
