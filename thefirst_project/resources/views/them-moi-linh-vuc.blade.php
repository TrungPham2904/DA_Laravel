@extends('layout')
@section('main-content')


<div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                               

                                @if(isset($linhVuc))
                                    <form action="{{ route('linh-vuc.xl-cap-nhat', ['id' => $linhVuc->id])}}" method="POST">
                                    <h4 class="mb-3 header-title">Cập nhật lĩnh vực mới</h4>
                                @else
                                    <form action="{{ route('linh-vuc.xl-them-moi')}}" method="POST">
                                    <h4 class="mb-3 header-title">Thêm lĩnh vực mới</h4>
                                @endif

                                @csrf
                                    <div class="form-group">
                                        <label for="ten_linh_vuc">Tên lĩnh vực</label>
                                        <input type="text" class="form-control" id="ten_linh_vuc" name="ten_linh_vuc" placeholder="Tên lĩnh vực" @if(isset($linhVuc)) value="{{ $linhVuc->ten_linh_vuc }}" @endif> 
                                    </div>
                                    <button type="submit" class="btn btn-primary waves-effect waves-light">Submit</button>
                                </form>

                            </div> <!-- end card-body-->
                        </div> <!-- end card--> 
                    </div>
                                
                
  @endsection