FROM jupyter/base-notebook

# (Tùy chọn) Cài thêm thư viện nếu muốn
RUN pip install --no-cache-dir numpy matplotlib pandas

EXPOSE 8888

CMD ["start-notebook.sh", "--NotebookApp.token=''", "--NotebookApp.password=''"]
