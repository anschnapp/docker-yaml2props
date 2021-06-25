FROM python
RUN pip install --upgrade pip && pip install pyperclip
RUN mkdir /workdir
RUN mkdir /script
RUN curl -s https://raw.githubusercontent.com/up2code/yaml2props/master/yaml2props.py --output /script/yaml2props.py
WORKDIR /workdir
ENTRYPOINT ["python", "/script/yaml2props.py"]
