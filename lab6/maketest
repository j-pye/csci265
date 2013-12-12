#  CSCI 265 Makefile (name = testmake)
#     - macro and shell command examples
#     - assumes the existance of 3 directories in the pwd named
#       A, B and C.
#     - invocation: make -f testmake [target]

mm = A B C
h = Hello_World

peter:
	echo "target peter"
	echo $h

paul:
	echo "target paul"
	echo $mm
	echo $(mm)

mary:
	echo "target mary"
	for x in $(mm); do \
		(echo "before cd "; pwd; \
		cd $$x;  \
		echo "after cd "; pwd) \
	done

jane:
	echo "target jane"
	for x in $(mm); do echo "before cd "; pidof sh; pwd; cd $$x;  echo "after cd "; pwd; done

oliver:
	echo "target oliver"
	for x in $(mm); do (echo "before cd "; pidof sh; pwd; cd $$x;  echo "after cd "; pwd) done
