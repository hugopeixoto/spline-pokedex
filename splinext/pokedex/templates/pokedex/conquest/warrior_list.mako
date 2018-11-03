<%inherit file="/base.mako"/>
<%namespace name="conqlib" file="lib.mako"/>

<%def name="title()">Warriors - Pokémon Conquest</%def>

<%def name="title_in_page()">
<ul id="breadcrumbs">
    <li><a href="${url('/dex')}">${_(u'Pokédex')}</a></li>
    <li><a href="${url('/dex/conquest')}">${_(u'Conquest')}</a></li>
    <li>${_(u'Warriors')}</li>
</ul>
</%def>

${h.h1(_('Warrior list'))}
<table class="dex-pokemon-moves dex-warriors striped-rows">
${conqlib.warrior_table_columns()}
${conqlib.warrior_table_header()}

<tbody>
    % for warrior in c.warriors:
    <tr>
        ${conqlib.warrior_table_row(warrior)}
    </tr>
    % endfor
</tbody>
</table>
