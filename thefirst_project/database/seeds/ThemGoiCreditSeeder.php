<?php

use Illuminate\Database\Seeder;

class ThemGoiCreditSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('goi_credit')->insert([
            ['ten_goi'=>'Gói A', 'credit'=>100, 'so_tien'=>50000],
            ['ten_goi'=>'Gói B', 'credit'=>150, 'so_tien'=>70000],
            ['ten_goi'=>'Gói C', 'credit'=>200, 'so_tien'=>90000],
            ['ten_goi'=>'Gói D', 'credit'=>250, 'so_tien'=>110000],
            ['ten_goi'=>'Gói E', 'credit'=>300, 'so_tien'=>130000]
        ]);
    }
}
