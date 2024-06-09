FROM tensorflow/tensorflow

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

RUN uvicorn app:app --

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]