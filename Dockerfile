FROM debian:stretch-slim as lilypond

ENV VERSION=2.18.2-1.linux-64

RUN apt-get update && apt-get install bzip2

WORKDIR /lilypond

COPY lilypond-${VERSION}.sh .
RUN sh lilypond-${VERSION}.sh --batch

ENTRYPOINT ["lilypond"]
CMD ["--help"]
