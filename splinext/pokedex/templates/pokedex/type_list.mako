<%inherit file="/base.mako"/>
<%namespace name="lib" file="/lib.mako"/>

<%def name="title()">Types</%def>

<%def name="title_in_page()">
<ul id="breadcrumbs">
    <li><a href="${url('/dex')}">Pokédex</a></li>
    <li>Types</li>
</ul>
</%def>

% if c.secondary_type:
<p>Showing part-${h.pokedex.type_link(c.secondary_type)} types.</p>
% else:
<p>If you like, show a secondary Pokémon type:</p>
% endif
<ul class="inline-block">
% if c.secondary_type:
    <li><a href="${url.current()}">none</a></li>
% endif
% for type in c.types:
    % if type != c.secondary_type:
    <li><a href="${url.current(secondary=type.name)}">${h.pokedex.type_icon(type)}</a></li>
    % endif
% endfor
</ul>

${h.h1('Type chart')}
<p>"Score" is a simple count of how many other types a type is strong against or weak to.  Bigger is better.</p>

<table class="dex-type-chart striped-rows js-hover-columns">
<colgroup>
    ## Move header columns
    <col> <col>
    % for type in c.types:
    <col>
    % endfor
</colgroup>
<colgroup>
    ## Score column
    <col>
</colgroup>
<thead>
    <tr class="header-row">
        <th></th>
        <th></th>
        <th colspan="${len(c.types) + 1}">Pokémon</th>
    </tr>
</thead>
<tbody>
    <tr class="subheader-row">
        <th rowspan="${len(c.types) + 2}">
            <div class="vertical-text">Move</div>
        </th>
        <th></th>
        % for type in c.types:
        <th>
            ${h.pokedex.type_link(type)}
            % if c.secondary_type:
            <br>${h.pokedex.type_link(c.secondary_type)}
            % endif
        </th>
        % endfor
        <th>Score</th>
    </tr>
    % for type in c.types:
    <tr class="subheader-row">
        <th>${h.pokedex.type_link(type)}</th>
        % for efficacy in sorted(type.damage_efficacies, key=lambda _: _.target_type.name):
        <% damage_factor = efficacy.damage_factor * c.secondary_efficacy[type] / 100 %>\
        <td class="dex-damage-dealt-${damage_factor}">
            ${h.pokedex.type_efficacy_label[damage_factor]}
        </td>
        % endfor
        <td ${damage_score_class(c.attacking_scores[type])}>
            ${c.attacking_scores[type]}
        </td>
    </tr>
    % endfor
</tbody>
<tfoot>
    <tr class="subheader-row">
        <th colspan="2">Score</th>
        % for type in c.types:
        <td ${damage_score_class(c.defending_scores[type])}>
            ${c.defending_scores[type]}
        </td>
        % endfor
        </td>
    </tr>
</tfoot>
</table>


<%def name="damage_score_class(score)">\
% if score > 0:
class="dex-damage-score-good"\
% elif score < 0:
class="dex-damage-score-bad"\
% else:
class="dex-damage-score-eh"\
% endif
</%def>
