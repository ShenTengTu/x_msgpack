.PHONY: update

update:
	@curl https://raw.githubusercontent.com/ShenTengTu/micropython-env/master/mpy_env/msgpack.py --output x_msgpack.py
sdist:
	@python setup.py sdist
## Clean source distribution.
sdist-clean:
	@rm -rf ./dist ./*egg-info
## Upload distribution to PyPI.
upload-pypi:
	@twine upload --repository pypi dist/*
## Upload distribution to test PyPI.
upload-testpypi:
	@twine upload --repository testpypi dist/*