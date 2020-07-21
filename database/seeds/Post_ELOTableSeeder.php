<?php

use Illuminate\Database\Seeder;

class Post_ELOTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
      factory(App\User_ELO::class, 50)->create()->each(function ($user) {
          $post = $user->product()->save(factory(App\Product_ELO::class)->make());
          factory(App\Comment_ELO::class, 10)->create(['user_id' => $user->id, 'product_id' => $post->id]);
      });
    }
}
