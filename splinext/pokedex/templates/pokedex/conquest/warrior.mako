<%inherit file="/base.mako"/>
<%namespace name="dexlib" file="/pokedex/lib.mako"/>
<%namespace name="conqlib" file="lib.mako"/>

<%! from splinext.pokedex import i18n %>

<%def name="title()">\
${_(u'{name} - Warriors - Pokémon Conquest').format(name=c.warrior.name)}
</%def>

<%def name="title_in_page()">
<ul id="breadcrumbs">
    <li><a href="${url('/dex')}">${_(u'Pokédex')}</a></li>
    <li><a href="${url('/dex/conquest')}">${_(u'Conquest')}</a></li>
    <li><a href="${url(controller='dex_conquest', action='warriors_list')}">${_(u'Warriors')}</a></a>
    <li>${c.warrior.name}</li>
</ul>
</%def>

<div id="dex-header">
    <a href="${url.current(name=c.prev_warrior.name.lower())}" id="dex-header-prev" class="dex-box-link">
        <img src="${h.static_uri('spline', 'icons/control-180.png')}" alt="«">
        ${conqlib.warrior_image(c.prev_warrior.ranks[0], 'small-icons')}
        ${c.prev_warrior.name}
    </a>
    <a href="${url.current(name=c.next_warrior.name.lower())}" id="dex-header-next" class="dex-box-link">
        ${c.next_warrior.name}
        ${conqlib.warrior_image(c.next_warrior.ranks[0], 'small-icons')}
        <img src="${h.static_uri('spline', 'icons/control.png')}" alt="»">
    </a>
    ${conqlib.warrior_image(c.warrior.ranks[0], 'big-icons')}<br />
    ${c.warrior.name}
</div>

${h.h1(_('Essentials'))}

## Portrait block
<div class="dex-page-portrait dex-warrior-portrait">
    <p id="dex-page-name">${c.warrior.name}</p>
    <div id="dex-warrior-portrait-sprite">
        ${conqlib.warrior_image(c.warrior.ranks[0], 'portraits')}
    </div>
    <p id="dex-page-types">
        % for type in c.warrior.types:
        ${h.pokedex.type_link(type)}
        % endfor
    </p>
</div>

<div class="dex-page-beside-portrait">
<h2>${_(u'Warrior Skills')}</h2>
% for rank in c.warrior.ranks:
% if c.rank_count > 1:
<h3>Rank ${h.pokedex.conquest_rank_label[rank.rank]}</h3>
% endif
<dl class="pokemon-abilities">  <!-- Well sort of. -->
    <dt><a href="${url(controller='dex_conquest', action='skills', name=rank.skill.name.lower())}">${rank.skill.name}</a></dt>
    <dd class="markdown">No effects yet.</dd>
</dl>
% endfor
</div>


${h.h1(_(u'Ranks'))}


${h.h1(_(u'Flavor'))}


${h.h1(_(u'Maximum Links'), id=_(u'max-links'))}
<p>${c.warrior.name}'s perfect links are highlighted in green.</p>

<p>
${_(u"""Note that {name} may not actually be able to obtain all these
Pokémon.  Before setting your heart on a particular Pokémon, check its
evolution conditions and make sure {name} can actually fulfil them.""").format(
    name=c.warrior.name,
)}
</p>

<p>Only show Pokémon with at least a _% link at Rank __</p>

<table class="dex-pokemon-moves striped-rows">
${conqlib.pokemon_table_columns(link_cols=c.rank_count)}
${conqlib.pokemon_table_header(link_cols=c.rank_count)}

<tbody>
    % for max_links in c.max_links:
    <tr class="${'perfect-link' if max_links[-1].max_link == 100 else ''}">
        % for link in max_links:
        <td class="max-link">${link.max_link}%</td>
        % endfor
        ${conqlib.pokemon_table_row(max_links[0].pokemon)}
    </tr>
    % endfor
</tbody>
</table>
