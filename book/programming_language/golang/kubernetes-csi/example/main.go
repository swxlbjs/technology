package main

import (
	"example.code.kubernetes-csi.golang.developer.swxlbjs.com/src"
	"flag"
	"k8s.io/klog"
)

var (
	endpoint string
	nodeID   string
)

func main() {
	flag.StringVar(&endpoint, "endpoint", "", "CSI Endpoint")
	flag.StringVar(&nodeID, "nodeid", "", "node id")

	klog.InitFlags(nil)
	flag.Parse()

	d := src.NewDriver(nodeID, endpoint)
	d.Run()
}
