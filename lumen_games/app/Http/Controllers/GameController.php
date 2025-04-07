<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Game;


class GameController extends Controller {
    /**
     * Create a new controller instance.
     *
     * @return void
     */

     public function getAll() {
         $games = Game::join('studios', 'studio_id', '=', 'studios.id')->select('games.id','title','genre','release_year','description','game_img','name')->orderBy('release_year', 'desc')->get();
         return response()->json($games);
     }


     public function getOne($id) {
        $game = Game::join('studios', 'studio_id', '=', 'studios.id')->select('games.id','title','genre','release_year','description','game_img','name','headquarters','founded_year','studio_img')->where('games.id', '=', $id)->get();
         return response()->json($game);
     }


     public function save(Request $request) {
        $this->validate($request, [
            'title' => 'required',
            'studio_id' => 'required',
            'release_year' => 'required|year',
            'game_img' => 'required'
        ]);
        $game = Game::create($request->all());
        return response()->json($game, 201);
    }



    /* public function save(Request $request) {
         $this->validate($request, [
             'title' => 'required',
             'studio_id' => 'required',
             'published_date' => 'required|date',
             'game_image' => 'required|image|mimes:jpeg,png,jpg,gif,webp|max:2048'
         ]);

         if ($request->hasFile('game_image')) {
            $file = $request->file('game_image');
            $filename = time() . '_' . uniqid() . '.' . $file->getClientOriginalExtension();
            $imagePath = $file->storeAs('images', $filename, 'public');
         } else {
             return response()->json(['error' => 'Image upload failed'], 400);
         }

         $game = Game::create([
             'title' => $request->title,
             'studio_id' => $request->studio_id,
             'published_date' => $request->published_date,
             'game_image' => $imagePath
         ]);

         return response()->json($game, 201);
     } */
    

    public function update(Request $request, $id) {
        $game = Game::findOrFail($id);
    
        $this->validate($request, [
            'title' => 'required',
            'studio_id' => 'required',
            'release_year' => 'required|year',
            'game_image' => 'required'
        ]);
        $game->update($request->all());
        return response()->json($game);
    }
    
    
    public function delete($id) {
        $game = Game::findOrFail($id);
        $game->delete();
        return response()->json(null, 204);
    }
    
}
