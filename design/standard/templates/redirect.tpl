<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="no" lang="no">
<head>
    <link rel="stylesheet" type="text/css" href={"stylesheets/core.css"|ezdesign} />
    <link rel="stylesheet" type="text/css" href={"stylesheets/debug.css"|ezdesign} />

    <title>{'eZ publish redirection - %url'|i18n('design/standard/layout',,hash('%url',$redirect_uri|wash))}</title>
</head>
<body>
  <form action="{$redirect_uri}" method="post" name="Redirect">
  {"Redirecting to %url"|i18n('design/standard/layout',,hash('%url',concat("<b>",$redirect_uri,"</b>")))} <br/>
  <input class="standardbutton" type="submit" Name="RedirectButton" value="{'Redirect'|i18n('design/standard/layout')}"/>
  </form>

<!--DEBUG_REPORT-->

</body>
</html>
