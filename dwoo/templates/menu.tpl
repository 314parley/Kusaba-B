{if empty($boards)}
	<ul>
		<li>{t}No Boards Available...{/t}</li>
	</ul>
{else}
	<ul>
	{foreach name=sections item=sect from=$boards}
	
		<li>
			<table border=1px>
			<!--This function works the Section name...-->
			<div class="column">
				<h3>{$sect.name}</h3>
				<!--Section end-->
		{if count($sect.boards) > 0}
			{foreach name=brds item=brd from=$sect.boards}
<ul>
				<li><a href="{%KU_BOARDSPATH}/{$brd.name}/" class="boardlink">{$brd.desc}
				{if $brd.locked eq 1}
				<img src="{%KU_BOARDSPATH}/css/locked.gif" border="0" alt="{t}Locked{/t}">
				{/if}
				</a></li></ul>
			{/foreach}
			
		{else}
				<ul>
					<li>{t}No visible boards{/t}</li>
				</ul>
		{/if}
			</table>
		</li>
	{/foreach}
	</ul>
{/if}
{if %KU_IRC}
	{if %KU_MENUTYPE eq 'normal'}
		<h2>
	{else}
		<h2 style="display: inline;"><br />
	{/if}
<!--	&nbsp;IRC</h2>
	<ul>
		<li>{%KU_IRC}</li>
	</ul>-->
{/if}
