{include file='layout/top.tpl'}
{include file='layout/navigation.tpl' active='admin'}


<div class="container adminFont">
	{include file='admin/_menue.tpl' active='i18n'}
	<form action="/admin/i18n" method="post">
	<input type="hidden" name="action" value="save" />
	<div class="row">
		<div class="col-md-3">
			<div class="btn-group-vertical">
			{foreach from=$tplTranslationList item=value key=key name=transtable}
				<a id="{$smarty.foreach.transtable.index}" type="button" class="btn btn-default tpage" style="text-align: left; padding: 15px; ">
					<b>{$key}</b>
					<br />
					<div>
						Status:
						{$value['p_green']}%
						{section name=foo loop=$value['p_green']}<img src="/images/admin/progressbar_green.png">{/section}{section name=foo loop=$value['p_red']}<img src="/images/admin/progressbar_red.png">{/section}
					</div>
				</a>
			{/foreach}
			</div>
		</div>
		<div class="col-md-9">
			{foreach from=$tplTranslationList item=value key=key name=transtable}
			<table class="table table-bordered tvalue" id="{$smarty.foreach.transtable.index}values" style="display: none;">
				<thead>
					<tr class="info">
						<th width="10%"><b>##admin_translation_line##</b></th>
						<th width="30%"><b>##admin_translation_key##</b></th>
						<th width="60%"><b>##admin_translation_value##</b></th>
					</tr>
				</thead>
				<tbody>
				{foreach from=$value['data'] item=subValue key=subKey}
					<tr>
						<td>{$subValue['line']}</td>
						<td>{$subValue['ukey']}</td>
						<td style="padding: 3px;">
							{if $subValue['ukey']|substr:-4 == 'text'}
							<textarea name="ukey_{$subValue['ukey']}" cols="70" rows="4" style="width: 580px;">{$subValue['translation']}</textarea>
							{else}
							<input name="ukey_{$subValue['ukey']}" size="70" value="{$subValue['translation']}" style="width: 580px;" />
							{/if}
						</td>
					</tr>
				{/foreach}
				<tr class="info">
				   <td colspan="3" align="right"><input type="submit" value="save" /></td>
				</tr>
				</tbody>
			</table>
			{/foreach}
		</div>
	</form>
</div>


{include file='layout/bottom.tpl' footer='no'}  