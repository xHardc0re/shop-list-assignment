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

        return response()->json(['message' => 'Shop creation was successful.', 'shop' => $shop], 201);
    }

    public function update(Request $request, Shop $shop)
    {
        $request->validate([
            'name'              => 'required',
            'description'       => 'required',
            'open_hours'        => 'required',
            'city'              => 'required',
            'address'           => 'nullable',
        ]);

        $shop->update($request->only('name', 'description', 'open_hours', 'city', 'address'));

        return response()->json(['message' => 'Shop update was successful.', 'shop' => $shop]);
    }

    public function destroy(Request $request, Shop $shop)
    {
        $shop->delete();

        return response()->json(['message' => 'Shop deletion was successful.']);
    }

    public function index(Request $request)
    {
        $query = Shop::query();
        $user =  auth('sanctum')->user();

        if ($user) {
            $query->where('user_id', $user->id);
        }

        if ($request->filled('city')) {
            $query->where('city', $request->city);
        }

        if ($request->filled('category_id')) {
            $query->where('category_id', $request->category_id);
        }

        $shops = $query->paginate(5);

        return response()->json($shops);
    }
}
