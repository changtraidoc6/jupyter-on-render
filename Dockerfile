FROM jupyter/base-notebook

# (Tùy chọn) Cài thêm thư viện
RUN pip install --no-cache-dir numpy matplotlib pandas

# Render cần app phải chạy trên 0.0.0.0
CMD ["start-notebook.sh", "--NotebookApp.token=''", "--NotebookApp.password=''", "--NotebookApp.ip=0.0.0.0", "--NotebookApp.allow_root=True", "--NotebookApp.allow_origin='*'"]

# EXPOSE để Render tự detect
EXPOSE 8888
