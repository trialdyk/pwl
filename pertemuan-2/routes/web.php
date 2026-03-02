<?php

use Illuminate\Support\Facades\Route;

Route::get('/hello', function () {
    return "Hello World";
});

Route::get('/world', function () {
    return "World";
});

Route::get('/',function(){
    return "Selamat Datang";
});


Route::get('/about',function(){
    return "Tri Aldy Kurniawan - 244107020098";
});

Route::get('/user/{name?}', function ($name=null) {
    return 'Nama saya ' . $name;
});

Route::get('/posts/{post}/comments/{comment}', function ($postId, $commentId) {
    return 'Pos ke-' . $postId . " Komentar ke-: " . $commentId;
});