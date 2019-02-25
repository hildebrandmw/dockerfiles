FROM darchr/tensorflow-builder

WORKDIR /tensorflow_src
# Copy CUDNN into the correct location
RUN rm /usr/lib/x86_64-linux-gnu/libcudnn_static*
RUN rsync -avP /usr/lib/x86_64-linux-gnu/libcudnn* /usr/local/cuda/lib64/

#RUN git checkout v1.12.0
RUN bazel build --config=mkl --config=cuda --copt=-march=native --copt=-mtune=native //tensorflow/tools/pip_package:build_pip_package
RUN ./bazel-bin/tensorflow/tools/pip_package/build_pip_package /tensorflow_build
RUN chmod 666 /tensorflow_build/tensorflow*
RUN pip install /tensorflow_build/tensorflow-1.12.0-cp35-cp35m-linux_x86_64.whl
