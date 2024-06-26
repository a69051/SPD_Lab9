install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
		
		
test:
	#python -m pytest -W --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb
	
lint:
	#hadolint Dockerfile #uncomment to explore linting Dockerfiles
	pylint --disable=R,C hello.py
	
all: install lint test
	