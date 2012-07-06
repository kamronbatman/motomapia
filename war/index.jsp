<!DOCTYPE html>

<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
		<meta name="description" content="Motomapia lets you download Wikimapia data as Points Of Interest that you can load into your GPS." />
		<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
		
		<title>Motomapia - download Wikimapia to your GPS</title>

		<link rel="stylesheet" type="text/css" href="/css/motomapia.css" />
		<link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.19/themes/ui-lightness/jquery-ui.css" />
	</head>

	<body>
		<div id="map"></div>
		
		<div id="placeName"></div>
		
		<div id="header">
			<div>
				<span class="brand"><span class="moto">Moto</span><span class="mapia">mapia</span></span>
				download <a href="http://www.wikimapia.org/" target="_blank">Wikimapia</a> to your GPS
			</div>
			
			<table id="row2">
				<tr>
					<td><a id="instructionsLink" href="#">Instructions</a></td>
					<td><a href="https://github.com/stickfigure/motomapia" target="_blank">Code</a></td>
					<td><button id="download">Download POIs</button></td>
				</tr>
			</table>
		</div>
		
		<img id="busy" src="/loading.gif" alt="loading"/>
		<img id="error" src="/error.png" alt="error" title="An error occurred communicating with the server. Move the map to restart."/>
		
		<div id="instructions" title="Instructions">
			<p>
				Motmapia lets you download
				place data from <a href="http://www.wikimapia.org">Wikimapia</a> in a format suitable for most GPSes.
			</p>
			
			<h3>How do I use Motomapia?</h3>
			<ol>
				<li>Browse the map, zooming in to view relevant places in the part of the map that interests you.</li>
				<li>Zoom out and resize your browser to encompass the area for which you want to download.</li>
				<li>Click the "Download POIs" button to download all previously seen POIs in the visible area.</li>
			</ol>
			
			<h3>Does this mean I only download the currently visible places?</h3>
			No.  You download <b>all</b> known POIs in the map area shown in your browser.  This could be a <b>lot</b>.
			
			<h3>Can I just download POIs without browsing?</h3>
			Maybe.  As you scroll, Wikimapia places are synced to Motomapia's database.  When you download,
			you download only what is in Motomapia's database.  Without scrolling, your places might not be available.
			On the other hand, if someone syncs an area today, it will probably still be present (for everyone) tomorrow.
			
			<h3>How do I edit places?</h3>
			Visit <a href="http://www.wikimapia.org/">Wikimapia</a>

			<h3>How do I load the downloaded file onto my GPS?</h3>
			It depends on your model of GPS.  You're on your own here.
		</div>

		<!-- These are a huge pain to work with when trying to use r.js, so just do it the old-fashioned way -->
		<script type="text/javascript" charset="utf8" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
		<script type="text/javascript" charset="utf8" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.19/jquery-ui.min"></script>
		<script type="text/javascript" charset="utf8" src="http://maps.google.com/maps/api/js?sensor=false"></script>
		
		<script type="text/javascript" src="/js/require.js"></script>
		<script type="text/javascript">
			<%@ include file="config.require.js" %>
		</script>
		<script type="text/javascript">
			require(['app/page/index']);
		</script>
		
		<script type="text/javascript">
			var _gaq = _gaq || [];
			_gaq.push(['_setAccount', 'UA-24156120-1']);
			_gaq.push(['_trackPageview']);
		
			(function() {
				var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
				ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
				var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
			})();
		</script>
	</body>
</html>
