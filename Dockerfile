FROM ubuntu:20.04
RUN apt-get update && apt-get install -y wget
RUN wget https://github.com/Cibiv/IQ-TREE/releases/download/v2.0.6/iqtree-2.0.6-Linux.tar.gz
RUN tar xzf iqtree-2.0.6-Linux.tar.gz
ENV PATH="/iqtree-2.0.6-Linux/bin:$PATH"
CMD ["/iqtree-2.0.6-Linux/bin/iqtree2"] 
