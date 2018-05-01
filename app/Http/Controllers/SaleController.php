<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Sale;
use App\SellableItem;


class SaleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function rate($id)
    {
        $rate = SellableItem::find($id);
        echo $rate;
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $items = Sale::orderBy('id','DESC')->paginate(5);
        return view('sale.index',compact('items'))
            ->with('i', ($request->input('page', 1) - 1) * 5);
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $sell = SellableItem::pluck('title','id');
        return view('sale.create',compact('sell','rate'));
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'itemid' => 'required',
            'uid' => 'required',
            'rate' => 'required',
            'qty' => 'required',
        ]);


        $sale = Sale::create($request->all());


        return redirect()->route('sale.index')
                        ->with('success','Item created successfully');
    }


    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $item = Sale::find($id);
        return view('sale.show',compact('item'));
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $item = Sale::find($id);
        $sell = SellableItem::pluck('title','id');
        $sellItem = $item->itemid ;
        return view('sale.edit',compact('item','sell','sellItem'));
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'itemid' => 'required',
            'uid' => 'required',
            'rate' => 'required',
            'qty' => 'required',
        ]);


        Sale::find($id)->update($request->all());


        return redirect()->route('sale.index')
                        ->with('success','Item updated successfully');
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Sale::find($id)->delete();
        return redirect()->route('sale.index')
                        ->with('success','Item deleted successfully');
    }
}
