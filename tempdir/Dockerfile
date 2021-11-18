FROM python
RUN pip install flask
COPY  ./static /home/application/static/
COPY  ./templates /home/application/templates/
COPY  login.py /home/application/
EXPOSE 4040
CMD python /home/application/login.py
