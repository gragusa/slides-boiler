FILE=
MDFILE=$(FILE)
TEXFILE=$(FILE)
INPUTS=

all: pdf; make clean

.PHONY: all clean

pdf:
# Use pandoc to convert the main markdown source to latex
	cd slides; pandoc -s -t beamer --mathjax --highlight-style kate --filter ../filter.py --template="../metropolis.template" $(MDFILE).md -o $(TEXFILE).tex
# Use sed to replace a string in the latex file that sets spaces in itemize environment
#sed -i "s/\\itemsep1pt\\parskip0pt\\parsep0pt/\\itemsep1.6pt\\parskip1.6pt\\parsep0pt/g" $(MDFILE).tex
# Apply xelatex twice to obtain the pdf
	cd slides; xelatex $(TEXFILE).tex
	cd slides; xelatex $(TEXFILE).tex

clean:
	cd slides; rm -f $(TEXFILE).log $(TEXFILE).vrb $(TEXFILE).aux $(TEXFILE).toc $(TEXFILE).snm $(TEXFILE).nav $(TEXFILE).out $(TEXFILE).fdb_latemk $(TEXFILE).synctex.gz $(TEXFILE).fls
  #cd slides; rm -f sed*.*
