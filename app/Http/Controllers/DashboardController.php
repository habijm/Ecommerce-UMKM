<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index(Request $request)
    {
        // Ambil informasi user
        $itemuser = $request->user();
        $data = array(
            'title' => 'Dashboard',
            'itemuser' => $itemuser
        );
        return view('dashboard.index', $data);
    }
}
