function setup(){
	
	$(function() {
			$(".slidetabs").tabs(".images > div", {
				effect: 'fade',
				fadeOutSpeed: "slow",
				rotate: true
				}).slideshow({
					autoplay:true,
					interval:8500
				});
			});
		
	$(".tabContainer").collapsiblePanel(); 
	$(".tabContainer1").collapsiblePanel2(); 
}

<!-- load the videos -->
/*<script type="text/javascript">
	google.load("swfobject", "2.1");
    var params = { allowScriptAccess: "always" };
	
	<!-- BNU -->
    var bnuatts = { id: "bnuytplayer" };
    swfobject.embedSWF("http://www.youtube.com/v/MHQQAIBFLw4?enablejsapi=1&playerapiid=bnuplayerapiid&allowFullScreen=true&version=3", "bnuplayer", "970", "650", "8", null, null, params, bnuatts);
	
	<!-- WNC -->
	var wncatts = { id: "wncytplayer" };
    swfobject.embedSWF("http://www.youtube.com/v/VuIp28YM7Co?enablejsapi=1&playerapiid=wncplayerapiid&allowFullScreen=true&version=3", "wncplayer", "970", "650", "8", null, null, params, wncatts);
	
	<!-- FBPR -->
	var fbatts = { id: "fbprytplayer" };
    swfobject.embedSWF("http://www.youtube.com/v/Ur-CrwQL1sI?enablejsapi=1&playerapiid=fbprplayerapiid&allowFullScreen=true&version=3", "fbprplayer", "970", "650", "8", null, null, params, fbatts);
	
	<!-- UoS -->
	var uosatts = { id: "uosytplayer" };
    swfobject.embedSWF("http://www.youtube.com/v/2oE47yH1UuE?enablejsapi=1&playerapiid=uosplayerapiid&allowFullScreen=true&version=3", "uosplayer", "970", "650", "8", null, null, params, uosatts);
	
	
	<!-- Perkins -->
	var perkatts = { id: "perkytplayer" };
    swfobject.embedSWF("http://www.youtube.com/v/nTU_9BltV-g?enablejsapi=1&playerapiid=perkplayerapiid&allowFullScreen=true&version=3", "perkplayer", "970", "650", "8", null, null, params, perkatts);
</script>
    
<!-- setup jquery tools -->
    <script>
	$(document).ready(
	
	function() {$("a[rel]").overlay({
		effect: 'apple', 
		mask: { 
			color: '#ebecff', 
			loadSpeed: 100, 
			opacity: 0.9 
		},
		closeOnClick: true
	});			
	
	$("#CGStillscrollable").scrollable({circular: false, autoplay: false, speed:900, easing:"swing", next:".CGStillNext", prev:".CGStillPrev"}).navigator({ navi: '#CGStillNavi' });
	
	$("#CGAnimscrollable").scrollable({circular: false, autoplay: false, speed:900, easing:"swing", next:'.CGAnimNext', prev:'.CGAnimPrev'}).navigator({ navi: '#CGAnimNavi' });
	
	$("#CGScriptscrollable").scrollable({circular: false, autoplay: false, speed:900, easing:"swing", next:'.CGScriptNext', prev:'.CGScriptPrev'}).navigator({ navi: '#CGScriptNavi' });
	
	$("#AgileTDAscrollable").scrollable({circular: false, autoplay: false, speed:900, easing:"swing", next:'.AgileTDANext', prev:'.AgileTDAPrev'}).navigator({ navi: '#AgileTDANavi' });
	
	$("#AgileMDAscrollable").scrollable({circular: false, autoplay: false, speed:900, easing:"swing", next:'.AgileMDANext', prev:'.AgileMDAPrev'}).navigator({ navi: '#AgileMDANavi' });
	
	$("#AgilePMscrollable").scrollable({circular: false, autoplay: false, speed:900, easing:"swing", next:'.AgilePMNext', prev:'.AgilePMPrev'}).navigator({ navi: '#AgilePMNavi' });
	
	$("#Javascrollable").scrollable({circular: false, autoplay: false, speed:900, easing:"swing", next:'.JavaNext', prev:'.JavaPrev'}).navigator({ navi: '#JavaNavi' });
	
	$("#vbnetscrollable").scrollable({circular: false, autoplay: false, speed:900, easing:"swing", next:'.vbnetNext', prev:'.vbnetPrev'}).navigator({ navi: '#vbnetNavi' });
	
	$("#cppscrollable").scrollable({circular: false, autoplay: false, speed:900, easing:"swing", next:'.cppNext', prev:'.cppPrev'}).navigator({ navi: '#cppNavi' });
	
	$("#javamescrollable").scrollable({circular: false, autoplay: false, speed:900, easing:"swing", next:'.javameNext', prev:'.javamePrev'}).navigator({ navi: '#javameNavi' });
	
	$("#cshscrollable").scrollable({circular: false, autoplay: false, speed:900, easing:"swing", next:'.cshNext', prev:'.cshPrev'}).navigator({ navi: '#cshNavi' });
	
	$("#phpscrollable").scrollable({circular: false, autoplay: false, speed:900, easing:"swing", next:'.phpNext', prev:'.phpPrev'}).navigator({ navi: '#phpNavi' });
	
	$("#openglscrollable").scrollable({circular: false, autoplay: false, speed:90, easing:"swing", next:'.openglNext', prev:'.openglPrev'}).navigator({ navi: '#openglNavi' });
	
	$("#webstackscrollable").scrollable({circular: false, autoplay: false, speed:90, easing:"swing", next:'.webstackNext', prev:'.webstackPrev'}).navigator({ navi: '#webstackNavi' });
	
	$("#erpscrollable").scrollable({circular: false, autoplay: false, speed:90, easing:"swing", next:'.erpNext', prev:'.erpPrev'}).navigator({ navi: '#erpNavi' });
	 
	$(".slidetabs").tabs(".images > div", {
	effect: 'fade',
	fadeOutSpeed: "slow",
	rotate: true
	}).slideshow({
		autoplay:true,
		interval:4500
	});
	});
	</script>*/