function setup(){
	$(function() {
			$(".slidetabs").tabs(".images > div", {
				effect: 'fade',
				fadeOutSpeed: "slow",
				rotate: true
				}).slideshow({
					autoplay:true,
					interval:4500
				});
			});
		$(document).ready(function() {
			$("a[rel]").overlay();
			$("div[rel]").overlay({effect: 'apple', mask: {color: '#ebecff', loadSpeed: 100, opacity: 0.9}, onBeforeLoad: function() {
					var wrap = this.getOverlay().find(".contentWrap");
					wrap.load(this.getTrigger().attr("href"));
				}, closeOnClick: true});
		});
	$(".tabContainer").collapsiblePanel(); 
	$(".tabContainer1").collapsiblePanel2();
}