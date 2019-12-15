<?php

namespace App\Http\Controllers;

use App\BureauDetails;
use Illuminate\Http\Request;
// use Illuminate\Support\Facades\Validator;
use App\Http\Controllers\Controller;
use Illuminate\Support\Str;

class BureauDetailsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    // public function index()
    // {
    //     //
    // }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'name'=>'required|max:55',
        ]);
        $user = BureauDetails::create($validatedData);
        return response(['user'=> $user]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\BureauDetails  $bureauDetails
     * @return \Illuminate\Http\Response
     */
    public function show(BureauDetails $bureauDetails)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\BureauDetails  $bureauDetails
     * @return \Illuminate\Http\Response
     */
    public function edit(BureauDetails $bureauDetails)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\BureauDetails  $bureauDetails
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, BureauDetails $bureauDetails)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\BureauDetails  $bureauDetails
     * @return \Illuminate\Http\Response
     */
    public function destroy(BureauDetails $bureauDetails)
    {
        //
    }



    public function product_edit($id){
        $product = Product::find($id);
        // echo"<pre>";print_r($products);exit;
        return view('admin.pages.product.edit')->with('product',$product);
    }

    public function manage_bureau(){
        $bureaudetails = BureauDetails::orderBy('id','desc')->get();
        return $bureaudetails;
    }

    public function bureau_store(Request $request){
        
        $request->validate([
            'bureauname'         => 'required',
            'addressprimary'     => 'required',
            'city'             => 'required',
            'district'             => 'required',
            'state'             => 'required',
            'zip'             => 'required|numeric',
            'phoneprimary'             => 'required',
            'rating'             => 'numeric',
            'religions'             => 'required',
            'subcastes'             => 'required',
        ]);
        
        $bureau = new BureauDetails;
        // echo"<pre>";print_r($request->addressprimary);exit;
        $bureau->bureauname = $request->bureauname;
        $bureau->addressprimary = $request->addressprimary;
        $bureau->city = $request->city;
        $bureau->district = $request->district;
        $bureau->state = $request->state;

        $bureau->zip = $request->zip;
        $bureau->phoneprimary = $request->phoneprimary;
        $bureau->slug = Str::slug($request->bureauname, '-');
        $bureau->rating = $request->rating;
        $bureau->religions = $request->religions;
        $bureau->subcastes = $request->subcastes;

        $bureau->save();

        //insert image using ProductImage Model

        // Single image insert
        // if($request->hasFile('product_image')){
        //     $image = $request->file('product_image');
        //     $img = time().'.'. $image->getClientOriginalExtension();
        //     $location = public_path('images/products/' .$img);
        //     Image::make($image)->save($location);

        //     $product_image = new ProductImage;
        //     $product_image->product_id = $product->id;
        //     $product_image->image = $img;
        //     $product_image->save();
        // }

        // Multiple image insert
        // if (count($request->product_image) > 0) {
        //     $i = 0;
        //     foreach ($request->product_image as $image) {
      
        //       //insert that image
        //       //$image = $request->file('product_image');
        //       $img = time() . $i .'.'. $image->getClientOriginalExtension();
        //       $location = 'images/products/' .$img;
        //       Image::make($image)->save($location);
      
        //       $product_image = new ProductImage;
        //       $product_image->product_id = $product->id;
        //       $product_image->image = $img;
        //       $product_image->save();
        //       $i++;
        //     }
        // }

        return response()->json(['bureau'=> $bureau, 'resstatus'=> "Created successfully"]);
    }

    public function product_update(Request $request, $id){

        $request->validate([
            'title'         => 'required|max:150',
            'description'   => 'required',
            'price'         => 'required|numeric',
            'quantity'      => 'required|numeric',
            // 'category_id'             => 'required|numeric',
            // 'brand_id'             => 'required|numeric',
        ]);

        $product = Product::find($id);
        $product->title = $request->title;
        $product->description = $request->description;
        $product->price = $request->price;
        $product->quantity = $request->quantity;

        $product->save();

        return redirect()->route('admin.products');
    }
}
