"function"!=typeof Object.create&&(Object.create=function(e){function t(){}return t.prototype=e,new t}),function($,e,t){var o=function o(n){var i=t.createElement("script"),l=t.getElementsByTagName("head")[0];"file://"==e.location.origin?i.src="http://www.youtube.com/iframe_api":i.src="//www.youtube.com/iframe_api",l.appendChild(i),l=null,i=null,a(n)},a=function t(o){"undefined"==typeof YT&&"undefined"==typeof e.loadingPlayer?(e.loadingPlayer=!0,e.dfd=$.Deferred(),e.onYouTubeIframeAPIReady=function(){e.onYouTubeIframeAPIReady=null,e.dfd.resolve("done"),o()}):"object"==typeof YT?o():e.dfd.done(function(e){o()})};YTPlayer={player:null,defaults:{ratio:16/9,videoId:"LSmgKRx5pBo",mute:!0,repeat:!0,width:$(e).width(),playButtonClass:"YTPlayer-play",pauseButtonClass:"YTPlayer-pause",muteButtonClass:"YTPlayer-mute",volumeUpClass:"YTPlayer-volume-up",volumeDownClass:"YTPlayer-volume-down",start:0,pauseOnScroll:!1,fitToBackground:!0,playerVars:{iv_load_policy:3,modestbranding:1,autoplay:1,controls:0,showinfo:0,wmode:"opaque",branding:0,autohide:0},events:null},init:function t(a,n){var i=this;return i.userOptions=n,i.$body=$("body"),i.$node=$(a),i.$window=$(e),i.defaults.events={onReady:function(e){i.onPlayerReady(e),i.options.pauseOnScroll&&i.pauseOnScroll(),"function"==typeof i.options.callback&&i.options.callback.call(this)},onStateChange:function(e){1===e.data?(i.$node.find("img").fadeOut(400),i.$node.addClass("loaded")):0===e.data&&i.options.repeat&&i.player.seekTo(i.options.start)}},i.options=$.extend(!0,{},i.defaults,i.userOptions),i.options.height=Math.ceil(i.options.width/i.options.ratio),i.ID=(new Date).getTime(),i.holderID="YTPlayer-ID-"+i.ID,i.options.fitToBackground?i.createBackgroundVideo():i.createContainerVideo(),i.$window.on("resize.YTplayer"+i.ID,function(){i.resize(i)}),o(i.onYouTubeIframeAPIReady.bind(i)),i.resize(i),i},pauseOnScroll:function e(){var t=this;t.$window.on("scroll.YTplayer"+t.ID,function(){var e=t.player.getPlayerState();1===e&&t.player.pauseVideo()}),t.$window.scrollStopped(function(){var e=t.player.getPlayerState();2===e&&t.player.playVideo()})},createContainerVideo:function e(){var t=this,o=$('<div id="ytplayer-container'+t.ID+'" >                                    <div id="'+t.holderID+'" class="ytplayer-player-inline"></div>                                     </div>                                     <div id="ytplayer-shield" class="ytplayer-shield"></div>');t.$node.append(o),t.$YTPlayerString=o,o=null},createBackgroundVideo:function e(){var t=this,o=$('<div id="ytplayer-container'+t.ID+'" class="ytplayer-container background">                                    <div id="'+t.holderID+'" class="ytplayer-player"></div>                                    </div>                                    <div id="ytplayer-shield" class="ytplayer-shield"></div>');t.$node.append(o),t.$YTPlayerString=o,o=null},resize:function t(o){var a=$(e);o.options.fitToBackground||(a=o.$node);var n=a.width(),i,l=a.height(),r,d=$("#"+o.holderID);n/o.options.ratio<l?(i=Math.ceil(l*o.options.ratio),d.width(i).height(l).css({left:(n-i)/2,top:0})):(r=Math.ceil(n/o.options.ratio),d.width(n).height(r).css({left:0,top:(l-r)/2})),d=null,a=null},onYouTubeIframeAPIReady:function t(){var o=this;o.player=new e.YT.Player(o.holderID,o.options)},onPlayerReady:function e(t){this.options.mute&&t.target.mute(),t.target.playVideo()},getPlayer:function e(){return this.player},destroy:function t(){var o=this;o.$node.removeData("yt-init").removeData("ytPlayer").removeClass("loaded"),o.$YTPlayerString.remove(),$(e).off("resize.YTplayer"+o.ID),$(e).off("scroll.YTplayer"+o.ID),o.$body=null,o.$node=null,o.$YTPlayerString=null,o.player.destroy(),o.player=null}},$.fn.scrollStopped=function(e){var t=$(this),o=this;t.scroll(function(){t.data("scrollTimeout")&&clearTimeout(t.data("scrollTimeout")),t.data("scrollTimeout",setTimeout(e,250,o))})},$.fn.YTPlayer=function(e){return this.each(function(){var t=this;$(t).data("yt-init",!0);var o=Object.create(YTPlayer);o.init(t,e),$.data(t,"ytPlayer",o)})}}(jQuery,window,document);