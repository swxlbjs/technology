module example.code.kubernetes-csi.golang.developer.swxlbjs.com

go 1.16

require (
	github.com/container-storage-interface/spec v1.6.0
	github.com/google/go-cmp v0.5.7 // indirect
	github.com/kubernetes-csi/csi-lib-utils v0.11.0
	github.com/spf13/afero v1.6.0 // indirect
	golang.org/x/net v0.0.0-20220107192237-5cfca573fb4d
	golang.org/x/sys v0.0.0-20220114195835-da31bd327af9 // indirect
	google.golang.org/genproto v0.0.0-20220107163113-42d7afdf6368 // indirect
	google.golang.org/grpc v1.44.0
	k8s.io/apimachinery v0.23.5 // indirect
	k8s.io/klog v1.0.0
	k8s.io/kubernetes v0.0.0-00010101000000-000000000000
)

replace k8s.io/kubernetes => k8s.io/kubernetes v1.13.0
