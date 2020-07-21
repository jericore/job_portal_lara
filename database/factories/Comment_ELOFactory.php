<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Comment_ELO;
use Faker\Generator as Faker;
use Illuminate\Support\Str;

$factory->define(Comment_ELO::class, function (Faker $faker) {
    return [
        'user_id' => function() {
            return factory(App\User::class)->create()->id;
        },
        'product_id' => function() {
            return factory(App\Product::class)->create()->id;
        },
        'comment' => $faker->sentence,
    ];
});
