<?php

use Illuminate\Database\Seeder;

class ThemCauHinhAppSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('cau_hinh_app')->insert([
            ['cau_hoi_sai'=>2,'thoi_gian_tra_loi'=>10]
        ]);
    }
}
