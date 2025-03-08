
default:
	pdflatex --shell-escape main.tex

asym:
	pdflatex --shell-escape main-asymptotics.tex
	makeindex main-asymptotics.idx
	pdflatex --shell-escape main-asymptotics.tex

comp:
	pdflatex --shell-escape main-comparison-based-sort.tex
	makeindex main-comparison-based-sort.idx
	pdflatex --shell-escape main-comparison-based-sort.tex

dist:
	pdflatex --shell-escape main-distribution-sort.tex
	makeindex main-comparison-distribution-sort.idx
	pdflatex --shell-escape main-distribution-sort.tex

cont:
	pdflatex --shell-escape main-container.tex
	makeindex main-container.idx
	pdflatex --shell-escape main-container.tex

link:
	pdflatex --shell-escape main-linkedlist.tex
	makeindex main-linkedlist.idx
	pdflatex --shell-escape main-linkedlist.tex

tree:
	pdflatex --shell-escape main-tree.tex
	makeindex main-tree.idx
	pdflatex --shell-escape main-tree.tex

hash:
	pdflatex --shell-escape main-hashtable.tex
	makeindex main-hashtable.idx
	pdflatex --shell-escape main-hashtable.tex
	
heap:
	pdflatex --shell-escape main-heap.tex
	makeindex main-heap.idx
	pdflatex --shell-escape main-heap.tex

heap2:
	pdflatex --shell-escape main-heap2.tex
	makeindex main-heap2.idx
	pdflatex --shell-escape main-heap2.tex

back:
	pdflatex --shell-escape main-backtrack.tex
	makeindex main-backtrack.idx
	pdflatex --shell-escape main-backtrack.tex

dac:
	pdflatex --shell-escape main-dac.tex
	makeindex main-dac.idx
	pdflatex --shell-escape main-dac.tex

dp:
	pdflatex --shell-escape main-dp.tex
	makeindex main-dp.idx
	pdflatex --shell-escape main-dp.tex

gree:
	pdflatex --shell-escape main-greedy.tex
	makeindex main-gree.idx
	pdflatex --shell-escape main-greedy.tex

gen:
	pdflatex --shell-escape main-gen.tex


ciss358:
	pdflatex --shell-escape main-ciss358.tex
	makeindex main-ciss358.idx
	pdflatex --shell-escape main-ciss358.tex

corr:
	pdflatex --shell-escape main-correctness.tex
	makeindex main-correctness.idx
	pdflatex --shell-escape main-correctness.tex
	
all:
	make asym
	make comp
	make dist
	make cont
	make link
	make tree
	make hash
	make heap
	make heap2
	make back
	make dac
	make dp
	make gree
	make corr

draft:
	pdflatex --shell-escape main.tex --draftmode
	pdflatex --shell-escape main.tex --draftmode
	pdflatex --shell-escape main.tex --draftmode
	pdflatex --shell-escape main.tex --draftmode

view:
	xdg-open main.pdf

v:
	xdg-open main.pdf
        
cleantmp:
	rm -rf abc.outut
	rm -rf '*.log' 
	rm -rf '*.aux'
	rm -rf '*.toc'
	rm -rf '*.out'
	rm -rf '*.idx'
	rm -rf '*.ilg'
	rm -rf '*.log'
	rm -rf 'shEsc.tmp'
	rm -rf '*.vrb'
	rm -rf '*.snm'
	rm -rf '*.nav'
	rm -rf '*.err'
	rm -rf '*.idx'
	rm -rf 'abc.output'


clean:
	rm -rf 'main.pdf'
	make cleantmp
        
c:
	rm -rf 'main.pdf'
	make cleantmp
    
mail:
	sendgmail --attach=main.pdf

