@extends('layouts.app')
 
@section('content')
	<div class="row">
	    <div class="col-lg-12 margin-tb">
	        <div class="pull-left">
	            <h2>Sale New Item</h2>
	        </div>
	        <div class="pull-right">
	            <a class="btn btn-primary" href="{{ route('sale.index') }}"> Back</a>
	        </div>
	    </div>
	</div>
	@if (count($errors) > 0)
		<div class="alert alert-danger">
			<strong>Whoops!</strong> There were some problems with your input.<br><br>
			<ul>
				@foreach ($errors->all() as $error)
					<li>{{ $error }}</li>
				@endforeach
			</ul>
		</div>
	@endif
	{!! Form::open(array('route' => 'sale.store','method'=>'POST')) !!}
<div id="sections">
	<div class="row section" id="sale-container0">
		<div class="col-xs-4 col-sm-4 col-md-4">
            <div class="form-group">
                <strong>Item:</strong>
                {!! Form::select('itemid[]', $sell,[], array('title' => 'Select an Item','class' => 'form-control selectpicker','data-live-search' => 'true', 'id' => 'getRate')) !!}
            </div>
        </div>
        <div class="form-group hide">
            {!! Form::hidden('uid', Auth::id(), array('placeholder' => 'User Id','class' => 'form-control')) !!}
        </div>
        <div class="col-xs-4 col-sm-4 col-md-4">
            <div class="form-group">
                <strong>Rate:</strong>
                {!! Form::text('rate[]', null, array('placeholder' => 'Rate','class' => 'form-control', 'id' =>'getRateValue','readonly'=>'readonly')) !!}
            </div>
        </div>
        <div class="col-xs-4 col-sm-4 col-md-4">
            <div class="form-group">
                <strong>Quantity:</strong>
                {!! Form::text('qty[]', null, array('placeholder' => 'Quantity','class' => 'form-control', 'id' => 'qty')) !!}
            </div>
        </div>
        
	</div>
</div>
<p><a href="#" class='addsection'>Add Section</a></p>
	<div class="clone"></div>
	<div class="col-xs-12 col-sm-12 col-md-12 text-center">
		<button type="submit" class="btn btn-primary">Submit</button>
    </div>
    
	{!! Form::close() !!}
	<script>


		    //define template
var template = $('#sections .section:first').clone();

//define counter
var sectionsCount = 1;

//add new section
$('body').on('click', '.addsection', function() {

    //increment
    sectionsCount++;

    //loop through each input
    var section = template.clone().find(':input').each(function(){

        //set id to store the updated section number
        var newId = this.id + sectionsCount;

        //update for label
        $(this).prev().attr('for', newId);

        //update id
        this.id = newId;

    }).end()

    //inject new section
    .appendTo('#sections');
    return false;
});

//remove section
$('#sections').on('click', '.remove', function() {
    //fade out section
    $(this).parent().fadeOut(300, function(){
        //remove parent element (main section)
        $(this).parent().parent().empty();
        return false;
    });
    return false;
});




		$( "#getRate" ).change(function() {
			alert(( "#getRate"+sectionsCount ));

			var id = $( "#getRate" ).val();
			
		  	$( "#getRateValue" ).load( "{{ URL('sale/rate/') }}/" + id  , function(data) {
			  	var obj = jQuery.parseJSON( data );
			  	$( "#getRateValue" ).val(obj.rate);
			});
			// var $div = $('div[id^="sale-container"]:last');
			// var num = parseInt( parseInt( $div.prop("id").match(/\d+/g)), 10 );
			// var newNum = num + 1 ;
			// var element = $('#sale-container'+num ).clone().appendTo('.clone').prop('id', 'sale-container'+newNum );
			
			// element.attr("id",element.attr("id").split("_")[0]+"_"+id);
   //      	var field = $('input', element).attr("id");
   //      	$('input', element).attr("id", field.split("_")[0]+"_"+id );
			
		});






	</script>
@endsection