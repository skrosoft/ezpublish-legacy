{let gallery_limit=8
     gallery_pre_items=2
     gallery_post_items=2
}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="no" lang="no">

<head>
<link rel="stylesheet" type="text/css" href={"stylesheets/core.css"|ezdesign} />
<link rel="stylesheet" type="text/css" href={"stylesheets/gallery.css"|ezdesign} />

{* Javascript START *}

<script language="JavaScript">
<!--
{literal}
function OpenWindow ( URL, WinName, Features ) {
	popup = window.open ( URL, WinName, Features );
	if ( popup.opener == null ) {
		remote.opener = window;
	}
	popup.focus();
}
{/literal}

// -->
</script>

{* Javascript END *}

{include uri="design:page_head.tpl" enable_glossary=false() enable_help=false()}
</head>

<body>
    
{* Top box START *}

<br />
<img src={"images/whiteboxlogo.png"|ezdesign} alt="White box - contemporary art gallery" />

<!-- Top box END -->

<table class="layout" width="700" cellpadding="1" cellspacing="0" border="0">
<tr>
    <td bgcolor="#cccccc">
        &nbsp;&nbsp;:: <a class="small" href={"content/view/full/44"|ezurl}>About</a><br /> 
    </td>
    <td bgcolor="#e8e8e8">
   &nbsp;
   </td>
</tr>
<tr>
    <td class="mainarea" width="99%" valign="top">
    <table width="100%" cellspacing="0" cellpadding="10">
    <tr>
        <td>
        <!-- Main area START -->
        {$module_result.content}
        <!-- Main area END -->
        </td>
    </tr>
    </table>
    </td>

    <td width="20%" valign="top" bgcolor="#cccccc" class="links">
        <div align="right">
            <table width="142" border="0" cellpadding="4" cellspacing="1">
	    {let gallery_list=fetch( content, list, hash(
                                        parent_node_id, 2, 
                                        class_filter_type, include,
                                        class_filter_array, array( 'folder' )
					)
			)}

            {section name=Gallery loop=$gallery_list}
                <tr>
                    <td bgcolor="#e2e2e2" class="small">
                        &nbsp;<a href={concat("/content/view/thumbnail/", $Gallery:item.node_id)|ezurl}>{$Gallery:item.name|wash}</a>
                    </td>
                </tr>
                {/section}
            {/section}
	    {/let}
            </table>
        </div>
        <br />
	<center>
        <a href="http://ez.no/developer"><img src={"powered-by-ezpublish-100x35-trans-lgrey.gif"|ezimage} alt="eZ publish" border="0" width="100" height="35" /></a>
        </center>
    </td>
</tr>
<tr>
    <td bgcolor="#e2e2e2" colspan="2">
        <div align="left" style="padding: 0.5em;">
            <p class="small"><a href="http://ez.no/developer">eZ publish&trade;</a> copyright &copy; 1999-2003 <a href="http://ez.no">eZ systems as</a></p>
        </div>
    </td>
</tr>
</table>
{/let}

<div align="center" class="small">
    Copyright &copy; <a href="http://ez.no">eZ systems as</a> 1999-2003.
</div>

</body>
</html>
