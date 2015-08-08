<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="assets/css/menu.css">
<script src="assets/js/jquery-1.8.2.min.js" ></script>
<script type="text/javascript">
	jQuery(document).ready(function(){
		var qcloud={};
		$('[_t_nav]').hover(function(){
			var _nav = $(this).attr('_t_nav');
			clearTimeout( qcloud[ _nav + '_timer' ] );
			qcloud[ _nav + '_timer' ] = setTimeout(function(){
			$('[_t_nav]').each(function(){
			$(this)[ _nav == $(this).attr('_t_nav') ? 'addClass':'removeClass' ]('nav-up-selected');
			});
			$('#'+_nav).stop(true,true).slideDown(200);
			}, 150);
		},function(){
			var _nav = $(this).attr('_t_nav');
			clearTimeout( qcloud[ _nav + '_timer' ] );
			qcloud[ _nav + '_timer' ] = setTimeout(function(){
			$('[_t_nav]').removeClass('nav-up-selected');
			$('#'+_nav).stop(true,true).slideUp(200);
			}, 150);
		});
	});
</script>
<div class="head-v3">
	<div class="navigation-up">
		<div class="navigation-inner">
			<div class="navigation-v3">
				<ul>
					<li class="nav-up-selected-inpage" _t_nav="home">
						<h2>
							<a href="#">首页</a>
						</h2>
					</li>
					<li class="" _t_nav="addcorpus">
						<h2>
							<a href="#">新增语料</a>
						</h2>
					</li>
					<li class="" _t_nav="testcorpus">
						<h2>
							<a href="#">测试语料</a>
						</h2>
					</li>
					<!-- <li _t_nav="support">
						<h2>
							<a href="#">帮助与支持</a>
						</h2>
					</li> -->
				</ul>
			</div>
		</div>
	</div>
	<div class="navigation-down">
		<div id="addcorpus" class="nav-down-menu menu-3 menu-1" style="display: none;" _t_nav="addcorpus">
			<div class="navigation-down-inner">
				<dl style="margin-left: 400px;">
					<dd>
						<a hotrep="hp.header.partner.1" href="person">guest901</a>
					</dd>
				</dl>
				<dl>
					<dd>
						<a hotrep="hp.header.partner.2" href="nom_session">guest901.nom_session</a>
					</dd>
				</dl>
				<dl>
					<dd>
						<a hotrep="hp.header.partner.3" href="nomsolo">guest901.nomsolo</a>
					</dd>
				</dl>
				<dl>
					<dd>
						<a hotrep="hp.header.partner.4" href="rule">guest901.rule</a>
					</dd>
				</dl>
			</div>
		</div>
	</div>
</div>