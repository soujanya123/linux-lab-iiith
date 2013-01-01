svg_files=all_files.svg all_students.svg all_teachers.svg
.PHONY : all clean

all: $(svg_files)

%.svg : %.dot ; dot -Tsvg $< > $@

%.png : %.dot ; dot -Tpng $< > $@

clean:
	rm -f $(svg_files)
