FROM rocker/r-base

RUN apt-get update \
	&& apt-get install -y \
		libxml2-dev \
		libcurl4-gnutls-dev \
		python \
		python-pip	

COPY /sql_test.R .

RUN pip install awscli

CMD ["Rscript", "sql_test.R"]