{include file='header.tpl' menu='people'}
<h2 class="page-header">{$aLang.people}</h2>
{include file='user_list.tpl' aUsersList=$aUsersLast}
{include file='paging.tpl' aPaging=$aPaging}
{include file='footer.tpl'}
