<?php

namespace App\Http\Controllers;

use App\Comments_model;
use Illuminate\Http\Request;

class CommentsController extends Controller
{
    public function store(Request $request)
    {
        $this->validate($request, [
            'title' => 'required',
            'description' => 'required',
            'user_id' => 'required',
            'products_id' => 'required'
        ]);
        $insert_data = $request->all();
        Comments_model::create($insert_data);

        return back()->with('comment_message', 'Yorumunuz eklenmiştir.');
    }

    public function destroy($id)
    {
        $delete_comment = Comments_model::findorfail($id);
        $delete_comment->delete();
        return back()->with('comment_message', 'Yorumunuz silinmiştir.');
    }
}
