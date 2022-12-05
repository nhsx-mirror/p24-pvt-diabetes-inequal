FROM python:3.10-slim

ENV PIP_ROOT_USER_ACTION=ignore

RUN    apt-get -y update \
    && pip install 'geopandas>=0.11' \
                   'matplotlib>=3.5' \
                   'networkx>=2.8' \
                   'numpy>=1.22' \
                   'pandas>=1.4' \
                   'pyproj>=3.3' \
                   'requests>=2.28' \
                   'Rtree>=1.0' \
                   'Shapely>=1.8,<2.0' \
    && pip install osmnx \
    && pip install esneft_tools

CMD ["bash"]
