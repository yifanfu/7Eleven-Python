FROM python

RUN apt update && apt install bash tzdata libffi-dev openssl

WORKDIR .

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENTRYPOINT [ "python", "app.py" ]
