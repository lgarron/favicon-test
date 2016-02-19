all: deploy open

SFTP_PATH      = "garron.net:~/garron.net/web/favicon-test/"
URL            = "https://garron.net/web/favicon-test"

.PHONY: deploy
deploy:
	rsync -avz \
		--exclude .DS_Store \
		--exclude .git \
		./ \
		${SFTP_PATH}
	echo "\nDone deploying. Go to ${URL}\n"


.PHONY: open
open:
	open ${URL}
