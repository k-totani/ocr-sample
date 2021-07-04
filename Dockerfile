FROM ruby:3.0.0-alpine

RUN mkdir /app
WORKDIR /app

COPY images ./

RUN apk --no-cache --update add tesseract-ocr && \
	wget https://github.com/tesseract-ocr/tessdata_best/raw/master/jpn.traineddata && \
	wget https://github.com/tesseract-ocr/tessdata_best/raw/master/jpn_vert.traineddata && \
	mv *.traineddata /usr/share/tessdata/