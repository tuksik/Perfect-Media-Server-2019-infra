all:
	echo blah

mb:
	ansible-playbook -b run.yaml --limit mb --ask-become-pass --vault-password-file .vault-password

c:
	ansible-playbook -b run.yaml --limit cartman --ask-become-pass --vault-password-file .vault-password

ccomp:
	ansible-playbook -b run.yaml --limit cartman --ask-become-pass --vault-password-file .vault-password --tags compose

adguard:
	ansible-playbook -b run.yaml --limit adguard --ask-become-pass --vault-password-file .vault-password

awesomo:
	ansible-playbook -b run.yaml --limit awesomo --ask-become-pass --vault-password-file .vault-password

reqs:
	ansible-galaxy install -r requirements.yaml

forcereqs:
	ansible-galaxy install -r requirements.yaml --force
