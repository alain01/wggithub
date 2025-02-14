<!-- Header -->
<{include file='db:wggithub_admin_header.tpl' }>

<{if $settings_list|default:''}>
	<table class='table table-bordered'>
		<thead>
			<tr class='head'>
				<th class="center"><{$smarty.const._AM_WGGITHUB_SETTING_ID}></th>
				<th class="center"><{$smarty.const._AM_WGGITHUB_SETTING_USERNAME}></th>
				<th class="center"><{$smarty.const._AM_WGGITHUB_SETTING_TOKEN}></th>
				<th class="center"><{$smarty.const._AM_WGGITHUB_SETTING_OPTIONS}></th>
				<th class="center"><{$smarty.const._AM_WGGITHUB_SETTING_PRIMARY}></th>
				<th class="center"><{$smarty.const._AM_WGGITHUB_SETTING_DATE}></th>
				<th class="center"><{$smarty.const._AM_WGGITHUB_SETTING_SUBMITTER}></th>
				<th class="center width5"><{$smarty.const._AM_WGGITHUB_FORM_ACTION}></th>
			</tr>
		</thead>
		<{if $settings_count}>
		<tbody>
			<{foreach item=setting from=$settings_list}>
			<tr class='<{cycle values='odd, even'}>'>
				<td class='center'><{$setting.id}></td>
				<td class='center'><{$setting.username}></td>
				<td class='center'><{$setting.token}></td>
				<td class='center'><{$setting.options_short}></td>
				<td class='center'><{$setting.primary}></td>
				<td class='center'><{$setting.date}></td>
				<td class='center'><{$setting.submitter}></td>
				<td class="center  width5">
					<a href="settings.php?op=edit&amp;set_id=<{$setting.id}>&amp;start=<{$start}>&amp;limit=<{$limit}>" title="<{$smarty.const._EDIT}>"><img src="<{xoModuleIcons16 edit.png}>" alt="<{$smarty.const._EDIT}> settings" /></a>
					<a href="settings.php?op=delete&amp;set_id=<{$setting.id}>&amp;start=<{$start}>&amp;limit=<{$limit}>" title="<{$smarty.const._DELETE}>"><img src="<{xoModuleIcons16 delete.png}>" alt="<{$smarty.const._DELETE}> settings" /></a>
				</td>
			</tr>
			<{/foreach}>
		</tbody>
		<{/if}>
	</table>
	<div class="clear">&nbsp;</div>
	<{if $pagenav|default:''}>
		<div class="xo-pagenav floatright"><{$pagenav}></div>
		<div class="clear spacer"></div>
	<{/if}>
<{/if}>
<{if $form|default:''}>
	<{$form}>
<{/if}>
<{if $error|default:''}>
	<div class="errorMsg"><strong><{$error}></strong></div>
<{/if}>

<!-- Footer -->
<{include file='db:wggithub_admin_footer.tpl' }>
