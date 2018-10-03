songs : lilypond sheets
	docker run \
		--rm \
		--mount type=bind,source=$(CURDIR),target=/music \
		lilypond \
		--output=/music/sheets/ \
		$(addprefix /music/,$(wildcard songs/*.ly))

lilypond :
	docker build --tag lilypond .

sheets :
	mkdir sheets

.PHONY : clean

clean :
	rm -rf sheets/
