

- cri (Container runtime interface)
  - `cri` is a [containerd](https://containerd.io/) plugin implementation of Kubernetes [container runtime interface (CRI)](https://github.com/kubernetes/kubernetes/blob/master/pkg/kubelet/apis/cri/runtime/v1alpha2/api.proto).
  - cri是 kubernetes的容器运行时接口的容器插件实现。
  - https://github.com/cuisongliu/cri/blob/master/docs/cri.png
- containerd
  - containerd is an industry-standard container runtime with an emphasis on simplicity, robustness and portability.
  - containerd完全支持运行容器的的CRI运行时规范。
  - cri在containerd1.1以上的版本的原生插件。它内置于containerd并默认启用。
  - https://containerd.io/img/architecture.png
- cri-o
  - OCI-based implementation of Kubernetes Container Runtime Interface.
  - kubernetes为了兼容cri和oci孵化了项目cri-o。为了架设在cri和oci之间的一座桥梁。由此cri-o既兼容cri插件实现又兼容oci的容器运行时标准。
- oci (Open Container Initiative)
  - https://www.opencontainers.org/about/oci-scope-table
  - oci是由多家公司成立的项目,并由linux基金会进行管理,致力于container runtime 的标准的制定和runc的开发等工作。
- runc
  - `runc` is a CLI tool for spawning and running containers according to the OCI specification.
  - runc，是对于OCI标准的一个参考实现，是一个可以用于创建和运行容器的CLI(command-line interface)工具。

