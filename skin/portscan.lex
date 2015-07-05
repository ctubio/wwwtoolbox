<h1>TCP/UDP Port Scan</h1>
<div style="text-align:center;padding:10px 0px" class="form-list">
  <label for="tdpudpscan-host">Hostname (or IP in dotted-quad notation):</label>
  <br />
  <input name="tdpudpscan-host" id="tdpudpscan-host" type="text" style="text-align:center;" />
  <br />
  <br />
  <label for="tdpudpscan-ports">Port number (CSV allowed for multiple):</label>
  <br />
  <input id="tdpudpscan-ports" type="text" style="text-align:center;" />
  <br />
  <br />
  <label for="tdpudpscan-protocol">Transport Protocol:</label>
  <br />
  <select id="tdpudpscan-protocol">
    <option selected="selected" value="tcp">TCP</option>
    <option value="udp">UDP</option>
  </select>
  <br />
  <br />
  <button type="button" title="Scan" class="button" id="tdpudpscan-button"><span><span>&dArr; Scan &dArr;</span></span></button>
  <br />
  <br />
  <div id="tdpudpscan-results"></div>
  <div id="tdpudpscan-waitforit" class="waitforit" style="background:url(data:image/gif;base64,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) 50% 50% no-repeat;height:32px;display:none;"></div>
</div>
<script type="text/javascript">
jQuery('button#tdpudpscan-button').click(function(){
  jQuery('div#tdpudpscan-results').html('');
  var p = jQuery('input#tdpudpscan-ports').val();
  var h = jQuery('input#tdpudpscan-host').val();
  var m = jQuery('select#tdpudpscan-protocol').val();
  if (!p||!h||!m||!(new RegExp(/\./).test(h))) return jQuery('div#tdpudpscan-results').hide().html('very funny.').fadeIn();
  if (new RegExp(/^\d+$/).test(p)) p = [p];
  else if (new RegExp(/^[\d,]+$/).test(p)) p = p.trim(',').split(',');
  else return jQuery('div#tdpudpscan-results').hide().html('very funny.<br /><br />If that was not a joke,<br />please insert a valid port (/^[\\d,]+$/).').fadeIn();
  var scanPort = function(h,m,p) {
    if (!p.length) {
      jQuery('div#tdpudpscan-waitforit').hide();
      return;
    }
    jQuery.ajax({
      url: location.pathname+"?host="+h+"&port="+p[0]+"&protocol="+m,
      context: jQuery('div#tdpudpscan-results')
    }).done(function(data) {
      jQuery(this).append(data).find('h3').fadeIn();
      setTimeout(function(){scanPort(h,m,p.slice(1));},1000);
    });
  };
  jQuery('div#tdpudpscan-waitforit').fadeIn();
  scanPort(h,m,p);
});
</script>