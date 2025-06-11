FROM python:3.11-slim

RUN pip install flask pyngrok

WORKDIR /app
COPY app.py .
#
EXPOSE 5000

CMD ["python", "-c", "from pyngrok import ngrok; import os, time; ngrok.set_auth_token(os.getenv('2x0hBLaq1qThHGBOs0btBareNfY_5x6tHpRfYFY5CfUTZUFTZ')); url = ngrok.connect(5000); print(f'🔗 Votre URL ngrok : {url}'); from app import app; app.run(host='0.0.0.0', port=5000); time.sleep(120)"]
