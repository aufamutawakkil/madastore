<style type="text/css">
	.grid-stack {
	    background: lightgoldenrodyellow;
	}

	.grid-stack-item-content {
	    color: #2c3e50;
	    text-align: center;
	    background-color: #18bc9c;
	}
</style>
<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
	<div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-banner" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $text_heading; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
  		<div class="container-fluid">
        <h1>Float grid demo</h1>

        <div>
            <div class="btn btn-default" id="add-new-widget">Add Widget</div>
        </div>

        <br/>

        <div class="grid-stack">
        </div>
    </div>


    <script type="text/javascript">
        $(function () {
            var options = {
                float: true
            };
            $('.grid-stack').gridstack(options);

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
                    this.grid.add_widget($('<div><div class="grid-stack-item-content" /><div/>'),
                        node.x, node.y, node.width, node.height);
                }.bind(this);

                $('#add-new-widget').click(this.add_new_widget);
            };
        });
    </script>
  </div>
</div>