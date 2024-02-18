<?php

namespace App\Http\Controllers;

use App\Models\Shop;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ShopController extends Controller
{
    public function create(Request $request)
    {
        $request->validate([
            'name'              => 'required',
            'category_id'       => 'required',
            'description'       => 'required',
            'open_hours'        => 'required',
            'city'              => 'required',
            'address'           => 'nullable',
        ]);

        $shop = Shop::create([
            'name'              => $request->name,
            'user_id'           => Auth::id(),
            'category_id'       => $request->category_id,
            'description'       => $request->description,
            'open_hours'        => $request->open_hours,
            'city'              => $request->city,
            'address'           => $request->address,
        ]);

        return response()->json(['message' => 'Shop creation was successful', 'shop' => $shop], 201);
    }
}
