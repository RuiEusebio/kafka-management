secret:
ifdef enc
	echo -n $(enc) | kubeseal --raw --namespace confluent --name kafkasa --cert ./certs/bitnami.cert; echo
else
	$(error the enc argument is empty, please use the following command instead: "make secret enc=your_secret")
endif