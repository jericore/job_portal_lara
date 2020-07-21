<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Product_ELO;
use Faker\Generator as Faker;
use Illuminate\Support\Str;

$factory->define(Product_ELO::class, function (Faker $faker) {
    $name = $faker->sentence;
    return [
        'name' => $name,
        'slug' => Str::slug($name),
        'description' => $faker->paragraph,
        'price' => 100000,
        'status' => 1
    ];
});
