<!DOCTYPE html>

<html>

<head>
<style>
	.scope {
		padding-left: 50px;
	}
	
	.scope .scope {
		padding-left: 100px;
	}
</style>

<body>

<#assign foo = "foo"/>
<#macro global_macro>
	<p>this is global macro</p>
</#macro>

<p>Inside test.ftl</p>

<p>Including:sample_include.ftl ...</p>
<div class="scope">
	<#include "sample_include.ftl"/>
</div>

<p>Including:sample_macro.ftl ...</p>
<div class="scope">
	<#include "sample_macro.ftl"/>
	<@sample_macro/>
</div>

<p>Trying to access local variable moo: ${moo}</p>

</body>

</html>