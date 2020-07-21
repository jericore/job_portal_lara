<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
      // factory('App\User', 20)->create();   // ini nanti di unkomen
        // factory('App\Profile', 20)->create(); //ini nanti di unkomen
        $this->call(Post_ELOtTableSeeder::class);
        // $this->call(UsersTableSeeder::class);
    }
}
