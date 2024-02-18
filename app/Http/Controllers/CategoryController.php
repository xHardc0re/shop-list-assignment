<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function create(Request $request)
    {
        $request->validate([
            'name' => 'required|unique:categories',
        ]);

        $category = Category::create([
            'name' => $request->name,
        ]);

        return response()->json(['message' => 'Category creation was successful', 'category' => $category], 201);
    }
}
