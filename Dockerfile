FROM udata/udata:1.6

RUN pip install redis==3.2.1 requests==2.21.0 --upgrade

COPY ./diff/METADATA /usr/local/lib/python2.7/dist-packages/udata-1.6.3.dist-info/METADATA
COPY ./diff/commands.init.py /usr/local/lib/python2.7/dist-packages/udata/commands/init.py
COPY ./diff/core.user.commands.py /usr/local/lib/python2.7/dist-packages/udata/core/user/commands.py
