all: figure1.svg 

figure1.svg: figure1.dot
	dot -Tsvg figure1.dot > figure1.svg

figure1.png: figure1.dot
	dot -Tpng figure1.dot > figure1.png

clean:
	rm -f figure1.svg
