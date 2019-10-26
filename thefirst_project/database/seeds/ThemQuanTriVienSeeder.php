<?php

use Illuminate\Database\Seeder;

class ThemQuanTriVienSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('quan_tri_vien')->insert([
            ['ten_dang_nhap'=>'TrungPham','mat_khau'=>'123','ho_ten'=>'Phạm Khắc Trung'],
            ['ten_dang_nhap'=>'TyTruong','mat_khau'=>'123','ho_ten'=>'Trương Văn Ty'],
            ['ten_dang_nhap'=>'ThinhTran','mat_khau'=>'123','ho_ten'=>'Trần Văn Thịnh']
        ]);
    }
}
