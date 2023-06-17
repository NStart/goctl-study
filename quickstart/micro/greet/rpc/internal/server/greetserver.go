// Code generated by goctl. DO NOT EDIT.
// Source: greet.proto

package server

import (
	"context"

	"micro/greet/rpc/internal/logic"
	"micro/greet/rpc/internal/svc"
	"micro/greet/rpc/pb"
)

type GreetServer struct {
	svcCtx *svc.ServiceContext
	pb.UnimplementedGreetServer
}

func NewGreetServer(svcCtx *svc.ServiceContext) *GreetServer {
	return &GreetServer{
		svcCtx: svcCtx,
	}
}

func (s *GreetServer) Ping(ctx context.Context, in *pb.Placeholder) (*pb.Placeholder, error) {
	l := logic.NewPingLogic(ctx, s.svcCtx)
	return l.Ping(in)
}