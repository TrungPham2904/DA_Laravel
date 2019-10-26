<?php

use Illuminate\Database\Seeder;

class ThemNguoiChoiSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('nguoi_choi')->insert([
            ['ten_dang_nhap'=> 'TrungNB','mat_khau'=>'trung123','email'=>'khactrung01203375867@gmail.com','hinh_dai_dien'=>'','diem_cao_nhat'=>'10000','credit'=>'10'],
            ['ten_dang_nhap'=> 'ThinhBL','mat_khau'=>'thinh123','email'=>'thinhzjzai@gmail.com','hinh_dai_dien'=>'','diem_cao_nhat'=>'8000','credit'=>'2'],
            ['ten_dang_nhap'=> 'TyBT','mat_khau'=>'ty123','email'=>'truongthy@gmail.com','hinh_dai_dien'=>'','diem_cao_nhat'=>'9000','credit'=>'3']

        ]);
    }
}
