
FROM ubuntu:latest

RUN apt update
RUN apt install python3 python3-pip -y

WORKDIR /app

ADD requirements.txt /app
RUN python3 -m pip install -r /app/requirements.txt

ADD requirements2.txt /app
RUN python3 -m pip install -r /app/requirements2.txt

ADD streamlit_app.py /app

RUN ls -al /
RUN ls -al /app

EXPOSE 8051

#CMD ["/bin/sh", "-c", "streamlit run /app/simple_streamlit_app.py & burr"]
#CMD ["/bin/sh", "-c", "streamlit run /app/streamlit_app.py & burr"]
CMD ["/bin/sh", "-c", "streamlit run /app/streamlit_app.py & burr"]



