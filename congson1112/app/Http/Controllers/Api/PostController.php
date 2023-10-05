<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Post;
use Illuminate\Support\Str;

class PostController extends Controller
{
    //post/index
    public function index()
    {
        $posts = Post::all();
        return response()->json(
            ['success' => true, 'message' => 'Tải dữ liệu thành công', 'posts' => $posts],
            200
        );
    }
    //GET:post/show
    public function show($id)
    {
        $post = Post::find($id);
        if ($post==null){
            return response()->json(
                ['success' => false, 'message' => 'Tải dữ liệu thành công', 'post' => null],
                404
            );
        }
        return response()->json(
            ['success' => true, 'message' => 'Tải dữ liệu thành công', 'post' => $post],
            200
        );
    }
    //POST:post/store
    public function store(Request $request)
    {
        $post = new Post();
        $post->title = $request->title; //form
        $post->slug = Str::of($request->title)->slug('-');
        $post->replay_id = $request->replay_id; //from
        $post->topic_id = $request->topic_id; //from
        $post->created_at = date('Y-m-d H:i:s');
        $post->created_by = 1;
        $post->status = $request->status; //form
        $post->save(); //Luuu vao CSDL
        return response()->json(
            ['success' => true, 'message' => 'Thành công', 'data' => $post],
            201
        );
    }
    //POST:post/update
    public function update(Request $request, $id)
    {
        $post = Post::find($id);
        if ($post==null){
            return response()->json(
                ['message' =>'Tai du lieu thanh cong', 'success'=> false, 'data'=>null],
                404
            );
        }
        $post->title = $request->title; //form
        $post->slug = Str::of($request->title)->slug('-');
        $post->replay_id = $request->replay_id; //from
        $post->topic_id = $request->topic_id; //from
        $post->updated_at = date('Y-m-d H:i:s');
        $post->updated_by = 1;
        $post->status = $request->status; //form
        $post->save(); //Luuu vao CSDL
        return response()->json(
            ['success' => true, 'message' => 'Thành công', 'data' => $post],
            200
        );
    }
    function post_list($type, $limit)
    {
        $args = [
            ['type', '=', $type],
            ['status', '=', 1]
        ];
        $posts = Post::where($args)
            ->orderBy('created_at', 'DESC')
            > limit($limit)
            ->get();
        return response()->json(
            [
                'success' => true,
                'message' => 'Tải dữ liệu thành công',
                'posts' => $posts
            ],
            200
        );
    }
    
    //DELETE:DESTROY
    public function destroy($id)
    {
        $post=Post::findOrfail($id);
        $post->delete();
        return response()->json(
            ['message' =>'Xóa dữ liệu thành công', 'success'=> true, 'data'=>$post],
        200
        );
    }

}
