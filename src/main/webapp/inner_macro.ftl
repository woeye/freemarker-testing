<#macro inner_macro moo>
	<p>Inside inner_macro</p>
	
	<p>accessing global macro</p>
	<@global_macro />
	
	<p>accessing global variable foo: ${foo}</p>
	<p>accessing parameter moo: ${moo}</p>
</#macro>