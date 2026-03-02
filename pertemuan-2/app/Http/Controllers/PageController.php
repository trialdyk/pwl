<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PageController extends Controller
{
    public function index(){
        return 'Selamat Datang';
    }

    public function about(){
        return 'Tri Aldy Kurniawan - 244107020098';
    }

    public function articles($articles){
        return 'Artikel : ' . $articles;
    }
}
