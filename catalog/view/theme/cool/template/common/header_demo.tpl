<div ng-controller="themes_controller">
<div id='header_demo' >
	<ul class="header_demo_menu">
		<li ng-click="show()"> Themes <i class="fa fa-sort-desc"></i> </li>
		<li><i class='pull-right fa fa-close btn-close-header-demo' ></i> </li>
	</ul>
</div>
<!-- container theme -->
<div id='container-themes' ng-show="container_themes" >
	<div id='container-themes-categories' >
		<p>All Categories</p>
		<ul>
			<li>Fashion</li>
			<li>ALat</li>
			<li>Software</li>
		</ul>
	</div>

	<div id='container-themes-search' >
		<p>Themes</p>
		<ul>
			<li>
				<img src=""/>
				<br/>
				<button class="btn btn-success" > <i class="fa fa-eye"></i> Preview</button>
			</li>
		</ul>
	</div>
</div>
</div>