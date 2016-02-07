<style type="text/css">
	.grid-stack {
	    background: #eee;
	}

	.grid-stack-item-content {
	    color: #2c3e50;
	    text-align: center;
	    background-color: #18bc9c;
	}
	.container{
		background: /*#eee*/;
		display: block;
		height: 95% !important;
		width: 95% !important;
	}
	.right_click_menu{
		width:170px;
		background: white;
		box-shadow: 0 0 5px 0 #bbb;
		border-radius:3px; 
		position: absolute;
		z-index: 200;
	}
	.right_click_menu ul {list-style: none;padding: 0;margin:0;}
	.right_click_menu li{
		padding:10px;
		display: block;
		cursor: pointer;
	}
	.right_click_menu li:nth-child(1){
		border-bottom:1px solid #bbb;
	}
	.right_click_menu li:hover{
		font-weight: bold;
	}
</style>
<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
	<div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button  id="save-grid" form="form-banner" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a>
         <div class="btn btn-default" id="add-new-widget"> <i class='fa fa-plus'></i> Add Widget</div>
        </div>
      <h1><?php echo $text_heading; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>

	

  <div class="container-fluid  container">
        <div class="grid-stack"></div>


    <script type="text/javascript">
        $(function () {
            var options = {
                float: true
            };

            $('.grid-stack').gridstack(options);
            $(".grid-stack").on('dragstart',function(e,ui){
            	$(".right_click_menu").each(function(){
            		$(this).remove();
            	})
            	var grid = this;
    			var element = event.target;
    			$(element).css('cursor','move');
            });

			$('.grid-stack').on('mousedown', function(event){
				window.contextMenu = false;
				if( event.which != 3 ){
					return false;
					event.preventDefault();
					event.stopPropagation();
				} 
				console.log($(this))
				/*console.log($(this).children().children())
				if( $(this).children().children().is(".grid-stack-item-content") ) { console.log('return');return false; event.preventDefault() }*/

				var index = $(this).children().index();
				console.log(index)

				//delete first//
				if( $(".right_click_menu[index='"+index+"']").length > 0 )
					 $(".right_click_menu[index='"+index+"']").remove();

			  	var top = $(this).top;
			  	var left = $(this).left;

			  	pos = {
			  		left: 	event.pageX - $(this).offset().left,
	        		top: 	event.pageY - $(this).offset().top
	        	}

			  	right_click_menu(pos.top,pos.left,index).appendTo($(this));

			  	return false;
			});

			// action right menu 
			$(document).on("click",".remove-widget",function(){

				var index = $(this).parent().parent().attr('index');
				$(".grid-stack").children().eq(index).remove();
				$(".right_click_menu[index='"+index+"']").remove();
			})
			

            new function () {
                this.items = [
                    {x: 0, y: 0, width: 2, height: 2},
                    {x: 3, y: 1, width: 1, height: 2},
                    {x: 4, y: 1, width: 1, height: 1},
                    {x: 2, y: 3, width: 3, height: 1},
//                    {x: 1, y: 4, width: 1, height: 1},
//                    {x: 1, y: 3, width: 1, height: 1},
//                    {x: 2, y: 4, width: 1, height: 1},
                    {x: 2, y: 5, width: 1, height: 1}
                ];

                this.grid = $('.grid-stack').data('gridstack');

                this.add_new_widget = function () {
                    var node = this.items.pop() || {
                                x: 12 * Math.random(),
                                y: 5 * Math.random(),
                                width: 1 + 3 * Math.random(),
                                height: 1 + 3 * Math.random()
                            };
                    this.grid.add_widget($('<div><div class="grid-stack-item-content"/><div/>'),
                        node.x, node.y, node.width, node.height);
                }.bind(this);

                $('#add-new-widget').click(this.add_new_widget);
            };

            $("#save-grid").on('click',function(){
            	var token = " <?=$_GET['token']; ?> ";
            	$.post('',function(callback){
            		console.log(callback)
            	})
            })



        });
		
		function right_click_menu(top,left,index){
			var menu= "<div class='right_click_menu' index='"+index+"' style='top:"+top+";left:"+left+"'>";
				menu+="<ul>";
				menu+="<li class='image-widget'><i class='fa fa-plus'></i> &nbsp; Image Path</li>";
				menu+="<li class='remove-widget'><i class='fa fa-plus'></i> &nbsp; Remove </li>";
				menu+="</ul>";
				menu+="</div>";

			return $(menu);
		}

    </script>
  </div>
</div>