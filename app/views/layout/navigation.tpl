	<!-- Fixed navbar -->
	<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="/">##url##</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li {if $active=='index'}class="active"{/if}><a href="/">##home##</a></li>
					<li {if $active=='about'}class="active"{/if}><a href="/about">##about##</a></li>
					{if $tplUserRole==3}
					<li {if $active=='admin'}class="active"{/if}><a href="/admin">##admin##</a></li>
					{/if}
				</ul>
				<ul class="nav navbar-nav navbar-right languageBox">
					<li class="dropdown" >
						<a href="/" class="dropdown-toggle" data-toggle="dropdown" data-clicked="false" onclick="location.href='/'">
							<i class="fa fa-globe"></i> 
							##languages## 
							<span class="caret"></span>
						</a>
						<ul class="dropdown-menu" role="menu">
						{section name=it loop=$tplLanguageList}
							<li>
								<a class="languageSwitch" id="{$tplLanguageList[it].language}" href="/fc/ajax/language?lang={$tplLanguageList[it].language}">
									<span class="line">
										<span class="right">
											{$tplLanguageList[it].native}
										</span>
										<span class="left">
											{if $tplLanguageListActive == $tplLanguageList[it].language}
												<i class="fa fa-check"></i>
											{/if}
											{$tplLanguageList[it].name}
										</span>
									</span>
								</a>
							</li>
						{/section}
						</ul>
					</li>
				</ul>
			</div><!--/.nav-collapse -->
		</div>
	</div>
