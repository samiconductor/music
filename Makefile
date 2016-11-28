all:
	vagrant ssh --command "cd /vagrant && lilypond --pdf *.ly"

clean:
	rm *.pdf
