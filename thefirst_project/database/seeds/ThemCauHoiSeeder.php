<?php

use Illuminate\Database\Seeder;

class ThemCauHoiSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('cau_hoi')->insert([
            ['noi_dung'=>'Loài nào là loài thuộc họ người','linh_vuc_id'=>1,'phuong_an_a'=>'Khỉ','phuong_an_b'=>'Chó','phuong_an_c'=>'Mèo','phuong_an_d'=>'Vịt','dap_an'=>'Khỉ']

        ]);
    }
}
