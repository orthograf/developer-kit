{include file='topic_part_header.tpl'}

<div class="topic-content text">
	{hook run='topic_content_begin' topic=$oTopic bTopicList=$bTopicList}
	
	{$oTopic->getText()}
	
	{hook run='topic_content_end' topic=$oTopic bTopicList=$bTopicList}

	<div class="topic-url">
		<a href="{router page='link'}go/{$oTopic->getId()}/" title="{$aLang.topic_link_count_jump}: {$oTopic->getLinkCountJump()}" class="text-success">{$oTopic->getLinkUrl()}</a>
	</div>
</div>

{include file='topic_part_footer.tpl'}
