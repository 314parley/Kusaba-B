{if empty($boards)}
	<tr>
		<td>{t}No visible boards{/t}</td>
	</tr>
{else}
	<tr>
	{foreach name=sections item=sect from=$boards}
		<td>
			<table style="padding:2px; border:0;">
				<tr><td><strong style="color:#850000;">{$sect.name}</strong></td></tr>
		{if count($sect.boards) > 0}
			{foreach name=brds item=brd from=$sect.boards}
				<tr><td><a href="{%KU_BOARDSPATH}/{$brd.name}/" class="boardlink{if $brd.trial eq 1} trial{/if}{if $brd.popular eq 1} pop{/if}">
				{if $showdirs eq 1}
					/{$brd.name}/ - 
				{/if}
				{$brd.desc}
				{if $brd.locked eq 1}
					<img src="{%KU_BOARDSPATH}/css/locked.gif" border="0" alt="{t}Locked{/t}">
				{/if}
				</a></td></tr>
			{/foreach}
		{else}
				<tr>
					<td>{t}No visible boards{/t}</td>
				</tr>
		{/if}
			</table>
		</td>
	{/foreach}
	</tr>
{/if}
{if %KU_IRC}
	{if %KU_MENUTYPE eq 'normal'}
		<h2>
	{else}
		<h2 style="display: inline;"><br />
	{/if}
	&nbsp;IRC</h2>
	<ul>
		<li>{%KU_IRC}</li>
	</ul>
{/if}
