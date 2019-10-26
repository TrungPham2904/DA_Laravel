<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('layout');   
})->name('trang-chu');

// Route::get('/User/{id}', function($id){
//     return 'User'.$id;
// });

//route Lĩnh vực
Route::prefix('linh-vuc')->group(function (){
    Route::name('linh-vuc.')->group(function(){
        Route::get('/','LinhVucController@index' ,function (){
            })->name('danh-sach');
//route thêm mới lĩnh vực
        Route::get('/them-moi','LinhVucController@create', function () {            
            })->name('them-moi');
        Route::post('/them-moi','LinhVucController@store', function () {            
            })->name('xl-them-moi');
//route cập nhật lĩnh vực
        Route::get('/cap-nhat/{id}','LinhVucController@show')->name('cap-nhat');
        Route::post('/xl-cap-nhat/{id}','LinhVucController@update', function ($id) {            
            })->name('xl-cap-nhat');              
    }); 
});
//route câu hỏi
Route::prefix('cau-hoi')->group(function(){
    Route::name('cau-hoi.')->group(function(){
        Route::get('/','CauHoiController@index',function(){
            })->name('ds-cau-hoi');
    });
});
//route người chơi
Route::prefix('nguoi-choi')->group(function(){
    Route::name('nguoi-choi.')->group(function(){
        Route::get('/','NguoiChoiController@index',function(){
            })->name('ds-nguoi-choi');    
    });
}); 
//route quản trị viên
Route::prefix('quan-tri-vien')->group(function(){
    Route::name('quan-tri-vien.')->group(function(){            
        Route::get('/','QuanTriVienController@index',function(){
        })->name('ds-quan-tri-vien');
    });
});
//route cấu hình app
Route::prefix('cau-hinh-app')->group(function(){
    Route::name('cau-hinh-app.')->group(function(){
        Route::get('/','CauHinhAppController@index',function(){
        })->name('ds-cau-hinh-app');
    });
});
//route cấu hình điểm câu hỏi
Route::prefix('cau-hinh-diem-cau-hoi')->group(function(){
    Route::name('cau-hinh-diem-cau-hoi.')->group(function(){
        Route::get('/','CauHinhDiemCauHoiController@index',function(){            
        })->name('ds-cau-hinh-diem-cau-hoi');
    });
});
//route cấu hình trợ giúp
Route::prefix('cau-hinh-tro-giup')->group(function(){
    Route::name('cau-hinh-tro-giup.')->group(function(){
        Route::get('/','CauHinhTroGiupController@index',function(){            
        })->name('ds-cau-hinh-tro-giup');
    });
});
//route chi tiết lượt chơi
Route::prefix('chi-tiet-luot-choi')->group(function(){
    Route::name('chi-tiet-luot-choi.')->group(function(){
        Route::get('/','ChiTietLuotChoiController@index',function(){
        })->name('ds-chi-tiet-luot-choi');
    });
});

//route gói credit
Route::prefix('goi-credit')->group(function(){
    Route::name('goi-credit.')->group(function(){
        Route::get('/','GoiCreditController@index',function(){
        })->name('ds-goi-credit');
    });
});

//route lịch sử mua credit
Route::prefix('lich-su-mua-credit')->group(function(){
    Route::name('lich-su-mua-credit.')->group(function(){
        Route::get('/','LichSuMuaCreditController@index',function(){
        })->name('ds-lich-su-mua-credit');
    });
});

//route lượt chơi
Route::prefix('luot-choi')->group(function(){
    Route::name('luot-choi.')->group(function(){
        Route::get('/','LuotChoiController@index',function(){
        })->name('ds-luot-choi');
    });
});

Route::get('/User/ty/{id?}', function($id = 'null'){
    return 'User'.$id;
});


