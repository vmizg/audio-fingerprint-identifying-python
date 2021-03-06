.PHONY: tests

install:
	@echo soon

clean:
	@find . -name \*.pyc -delete

reset:
	@python reset-database.py

tests:
	@python tests/*.py

stat:
	@python get-database-stat.py

fingerprint-songs: clean
	@python collect-fingerprints-of-songs.py

recognize-listen: clean
	@python recognize_from_microphone.py -s $(seconds)

recognize-file: clean
	@python recognize_from_file.py $(file)

recognize-dir: clean
	@python recognize_from_file.py --dir $(dir)
