# building image: docker build -t findomain .
# example use : docker run --rm -it findomain -t "target.domain"

FROM debian:bookworm
LABEL maintainers = "erik@theshell.company"

# environment variables
ENV DEBIAN_FRONTEND=noninteractive

# upgrade and install the packages
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -yq --no-install-recommends ca-certificates unzip wget

# installation findomain
WORKDIR /tmp
RUN wget https://github.com/Findomain/Findomain/releases/latest/download/findomain-linux-i386.zip &&
    unzip /tmp/findomain-linux-i386.zip && \
    chmod +x /tmp/findomain && \
    mv /tmp/findomain /usr/bin/findomain && \
    rm /tmp/findomain-linux-i386.zip

ENTRYPOINT [ "findomain" ] 
