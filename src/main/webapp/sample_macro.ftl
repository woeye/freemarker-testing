<#macro sample_macro>

	<p>Inside sample_macro</p>
	<p>accessing global variable foo: ${foo}</p>
	
	<p>Including inner macro ...</p>
	<div class="scope">
		<#local moo = "moo1234" />
		<#include "inner_macro.ftl" />
		<#local macro_name = "macro" />
		<#local real_macro_name = "inner_" + macro_name />
		<@.vars[real_macro_name] moo/>
	</div>
</#macro>