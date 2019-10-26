@extends('layout')
@section('js')
<!-- third party js -->
<script src="{{ asset('assets/libs/datatables/jquery.dataTables.min.js') }}"></script>
        <script src="{{ asset('assets/libs/datatables/dataTables.bootstrap4.js') }}"></script>
        <script src="{{ asset('assets/libs/datatables/dataTables.responsive.min.js') }}"></script>
        <script src="{{ asset('assets/libs/datatables/responsive.bootstrap4.min.js') }}"></script>
        <script src="{{ asset('assets/libs/datatables/dataTables.buttons.min.js') }}"></script>
        <script src="{{ asset('assets/libs/datatables/buttons.bootstrap4.min.js') }}"></script>
        <script src="{{ asset('assets/libs/datatables/buttons.html5.min.js') }}"></script>
        <script src="{{ asset('assets/libs/datatables/buttons.flash.min.js') }}"></script>
        <script src="{{ asset('assets/libs/datatables/buttons.print.min.js') }}"></script>
        <script src="{{ asset('assets/libs/datatables/dataTables.keyTable.min.js') }}"></script>
        <script src="{{ asset('assets/libs/datatables/dataTables.select.min.js') }}"></script>
        <script src="{{ asset('assets/libs/pdfmake/pdfmake.min.js') }}"></script>
        <script src="{{ asset('assets/libs/pdfmake/vfs_fonts.js') }}"></script>
        <!-- third party js ends -->
<script type="text/javascript">
        
        $(document).ready(function(){$("#cau-hinh-diem-cau-hoi-datatable").DataTable({language:{paginate:{previous:"<i class='mdi mdi-chevron-left'>",next:"<i class='mdi mdi-chevron-right'>"}},drawCallback:function(){$(".dataTables_paginate > .pagination").addClass("pagination-rounded")}});});
        </script>
@endsection

@section('css')
   <!-- third party css -->
   <link href="{{ asset ('assets/libs/datatables/dataTables.bootstrap4.css') }}" rel="stylesheet" type="text/css" />
        <link href="{{ asset ('assets/libs/datatables/responsive.bootstrap4.css') }}" rel="stylesheet" type="text/css" />
        <link href="{{ asset ('assets/libs/datatables/buttons.bootstrap4.css') }}" rel="stylesheet" type="text/css" />
        <link href="{{ asset ('assets/libs/datatables/select.bootstrap4.css') }}" rel="stylesheet" type="text/css" />
        <!-- third party css end -->
@endsection

@section('main-content')

 <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="header-title">Danh sách cấu hình diểm câu hỏi</h4>
                                <table id="cau-hinh-diem-cau-hoi-datatable" class="table dt-responsive nowrap">
                                    <thead>
                                        <tr>
                                            <th>Thứ tự</th>
                                            <th>Điểm</th>                                           
                                        </tr>
                                    </thead>
                                
                                
                                    <tbody>
                                    @foreach($cauHinhDiemCauHoi as $tungCauHinhDiemCauHoi)
                                        <tr>
                                            <td>{{ $tungCauHinhDiemCauHoi->id }}</td>
                                            <td> {{ $tungCauHinhDiemCauHoi->thu_tu }}</td>
                                            <td> {{ $tungCauHinhDiemCauHoi->diem }}</td>
                                            <td>
                                             <a href="#" class="btn btn-info waves-effect waves-light"><i class="mdi mdi-pencil-plus"></i></a>
                                                
                                           
                                             <a href="#" class="btn btn-purple waves-effect waves-light"><i class=" mdi mdi-database-edit"></i></a> 

                                            <button type="button" class="btn btn-danger waves-effect waves-light"><i class="mdi mdi-delete-forever"></i></button>

                                
                                            </td>                                           
                                        </tr>
                                    @endforeach
                                    </tbody>
                                </table>

                            </div> <!-- end card body-->
                        </div> <!-- end card -->
                    </div><!-- end col-->
                </div>
@endsection