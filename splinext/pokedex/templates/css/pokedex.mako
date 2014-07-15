/*** General ***/

/* Pokémon sprite link grid */
a.dex-icon-link { display: inline-block; border: 1px solid transparent; }
a.dex-icon-link:hover { border: 1px solid #bfd3f1; background: #e6eefa; }
a.dex-icon-link.selected { border: 1px solid #95b7ea; background: #bfd4f2; }
a.dex-box-link { display: inline-block; margin: 0.25em; border: 1px solid transparent; }
a.dex-box-link:hover { border: 1px solid #bfd3f1; background: #e6eefa; }
a.dex-box-link.selected { border: 1px solid #95b7ea; background: #bfd4f2; }

/* Cool three-column layout */
.dex-column-container { clear: both; overflow: hidden /* float context */; margin-top: 1em; }
.dex-column { float: left; width: 32.666%; margin-left: 1%; }
.dex-column:first-child { margin-left: 0; }
.dex-column-2x { float: left; width: 66.333%; margin-left: 1%; }
.dex-column-2x:first-child { margin-left: 0; }
.dex-column2 { float: left; width: 49%; margin-left: 1%; }
.dex-column2:first-child { margin-left: 0; }

/* Type damage colors */
.dex-damage-taken-0   { font-weight: bold; color: #66c; }
.dex-damage-taken-25  { font-weight: bold; color: #6cc; }
.dex-damage-taken-50  { font-weight: bold; color: #6c6; }
.dex-damage-taken-100 { font-weight: bold; color: #999; }
.dex-damage-taken-200 { font-weight: bold; color: #c66; }
.dex-damage-taken-400 { font-weight: bold; color: #c6c; }
.dex-damage-dealt-0   { font-weight: bold; color: #66c; }
.dex-damage-dealt-25  { font-weight: bold; color: #c6c; }
.dex-damage-dealt-50  { font-weight: bold; color: #c66; }
.dex-damage-dealt-100 { font-weight: bold; color: #999; }
.dex-damage-dealt-200 { font-weight: bold; color: #6c6; }
.dex-damage-dealt-400 { font-weight: bold; color: #6cc; }
.dex-damage-score-good { font-weight: bold; color: #4c4; }
.dex-damage-score-bad  { font-weight: bold; color: #c44; }
.dex-damage-score-eh   { font-weight: bold; color: #ccc; }

/* Move priorities, used most prominently in the move table */
.dex-priority-fast { font-weight: bold; color: green; }
.dex-priority-slow { font-weight: bold; color: red; }

/* Nature-affected stats */
.dex-nature-buff { font-weight: bold; color: #e65858; }
.dex-nature-nerf { font-weight: bold; color: #5875e6; }

/* Links to Pokémon search */
dd .dex-subtle-search-link { visibility: hidden; }
dd:hover .dex-subtle-search-link { visibility: visible; }


/*** General tables ***/

/* Columns woo */
/* nb: these columns *include* cell padding */
col.dex-col-icon        { width: 40px; }
col.dex-col-name        { width: 10em; }
col.dex-col-link        { width: 16px; }
col.dex-col-max-exp     { width: 7em; }
col.dex-col-ability     { width: 8em; }
col.dex-col-gender      { width: 7em; }
col.dex-col-egg-group   { width: 7em; }
col.dex-col-height      { width: 5em; }
col.dex-col-weight      { width: 6em; }
col.dex-col-species     { width: 8em; }
col.dex-col-color       { width: 7em; }
col.dex-col-habitat     { width: 9em; }
col.dex-col-stat        { width: 3em; }
col.dex-col-stat-total  { width: 4em; }
col.dex-col-stat-name   { width: 10em; }
col.dex-col-stat-bar    { width: auto; }
col.dex-col-stat-pctile { width: 5em; }
col.dex-col-stat-result { width: 5em; }
col.dex-col-effort      { width: 8em; }
col.dex-col-type        { width: 40px; /* badges are 32px wide */ }
col.dex-col-type2       { width: 80px; }
col.dex-col-version     { width: 3.5em; }  /* two versions (32px < 33px == 3em) plus 0.17em padding < 3.5em */
col.dex-col-encounter-name { width: 10em; }
col.dex-col-encounter-version { width: 12em; }

/* Generic Pokémon and move lists; originally used for a Pokémon's moves, or a move's Pokémon */
table.dex-pokemon-pokemon-moves { width: 100%; }
table.dex-pokemon-moves td { padding: 0.33em; vertical-align: middle; text-align: center; }
table.dex-pokemon-moves th { padding: 0.33em 0.17em; text-align: center; }
table.dex-pokemon-moves tr.header-row { border-top: 2px solid #668dcc; }
table.dex-pokemon-moves tr.subheader-row th { padding: 0.17em 0.33em; text-align: left; }
table.dex-pokemon-moves tr.conquest-subheader-row th { text-align: center; }
table.dex-pokemon-moves td.egg { padding: 0 /* egg sprite consumes a lot of space, so let it extend into padding */; }
table.dex-pokemon-moves td.icon { padding: 0 /* icons consume a lot of space, so let em extend into padding */; }
table.dex-pokemon-moves td.name { white-space: nowrap; }
table.dex-pokemon-moves td.max-exp { text-align: right; }
table.dex-pokemon-moves td.effect { font-size: 0.8em; text-align: left; }
table.dex-pokemon-moves td.effect p { margin: 0; }
table.dex-pokemon-moves td.tutored { white-space: nowrap; }
table.dex-pokemon-moves .no-tutor { visibility: hidden; }
table.dex-pokemon-moves td.type2 { text-align: left; }
table.dex-pokemon-moves td.ability { font-size: 0.75em; padding: 0.25em; white-space: nowrap; }
table.dex-pokemon-moves td.egg-group { font-size: 0.75em; padding: 0.25em; }
table.dex-pokemon-moves td.stat { text-align: right; }
table.dex-pokemon-moves td.stat-range { text-align: center /* Conquest - Range is always one digit and looks awkward shoved to the side */; }
table.dex-pokemon-moves td.size { text-align: right; }
table.dex-pokemon-moves td.color { text-align: left; }
table.dex-pokemon-moves td.species { }
table.dex-pokemon-moves td.effort { font-size: 0.75em; padding: 0.25em; text-align: left; }
table.dex-pokemon-moves tr.better-move-type:nth-child(2n) td.type,
table.dex-pokemon-moves tr.better-move-type:nth-child(2n) td.type2,
table.dex-pokemon-moves tr.better-move-stat-physical:nth-child(2n) td.stat-attack,
table.dex-pokemon-moves tr.better-move-stat-special:nth-child(2n) td.stat-special-attack,
table.dex-pokemon-moves tr.better-move-stat:nth-child(2n) td.class,
table.dex-pokemon-moves tr.perfect-link:nth-child(2n) td.max-link { background: #afcfaf; }
table.dex-pokemon-moves tr.better-move-type:nth-child(2n+1) td.type,
table.dex-pokemon-moves tr.better-move-type:nth-child(2n+1) td.type2,
table.dex-pokemon-moves tr.better-move-stat-physical:nth-child(2n+1) td.stat-attack,
table.dex-pokemon-moves tr.better-move-stat-special:nth-child(2n+1) td.stat-special-attack,
table.dex-pokemon-moves tr.better-move-stat:nth-child(2n+1) td.class,
table.dex-pokemon-moves tr.perfect-link:nth-child(2n+1) td.max-link { background: #c0d8c0; }

/* "Sorting" Pokémon search results by evolution chain */
table.dex-pokemon-moves tr.fake-result td { opacity: 0.25; }
table.dex-pokemon-moves tr.chain-divider { border-top: 2px solid #b4c7e6; }
table.dex-pokemon-moves tr.evolution-depth-0 td.name { text-align: left; }
table.dex-pokemon-moves tr.evolution-depth-1 td.name { padding-left: 1em; text-align: left; }
table.dex-pokemon-moves tr.evolution-depth-2 td.name { padding-left: 2em; text-align: left; }
table.dex-pokemon-moves tr.evolution-depth-3 td.name { padding-left: 3em; text-align: left; }

/* JavaScript filtering/sorting */
.js-dex-pokemon-moves-extras { margin-bottom: 0.25em; text-align: right; }
.js-dex-pokemon-moves-options { display: inline-block; position: relative; margin-bottom: 0.25em; }
.js-dex-pokemon-moves-options .title { font-size: 0.8em; padding: 0.33em 0.5em; background: #cfdcf0; border-radius: 0.5em; }
.js-dex-pokemon-moves-options .title img { margin-right: 0.33em; }
.js-dex-pokemon-moves-options .body { display: none; position: absolute; right: 0; width: 16em; padding: 0.33em; border: 1px solid #668dcc; text-align: left; background: white; box-shadow: 0.125em 0.125em 0.25em rgba(0, 0, 0, 0.5); }
.js-dex-pokemon-moves-options:hover .title { background: #3173ce; color: white; border-radius: 0; border-top-left-radius: 0.5em; border-top-right-radius: 0.5em; }
.js-dex-pokemon-moves-options:hover .body { display: block; }
.js-dex-pokemon-moves-options:hover .body label { display: block; }
table.dex-pokemon-moves tr.js-dex-pokemon-moves-controls .js-label { font-size: 0.67em; }
table.dex-pokemon-moves tr.js-dex-pokemon-moves-controls:hover { background: transparent; }
table.dex-pokemon-moves tr.js-dex-pokemon-moves-controls td:hover { cursor: pointer; background: #e6eefa; }
table.dex-pokemon-moves tr.js-dex-pokemon-moves-controls td.js-not-a-button:hover { cursor: default; background: transparent; }
table.dex-pokemon-moves tr.js-dex-pokemon-moves-controls td.js-sorted-by { background: #f0efe6; }
table.dex-pokemon-moves tr:nth-child(2n) td.js-sorted-by { background: #f0efe6; }
table.dex-pokemon-moves tr:nth-child(2n+1) td.js-sorted-by { background: #f6f4ea; }


/*** Individual pages -- shared ***/

/* Prev/current/next header */
#dex-header { overflow: hidden; /* new float context */ text-align: center; line-height: 24px; /* keep buttons at least 24px tall */ }
#dex-header-prev { float: left;  text-align: left; }
#dex-header-next { float: right; text-align: right; }
#dex-header-prev, #dex-header-next { width: 15em; min-height: 24px; margin: 0; }
#dex-header-prev img, #dex-header-next img { vertical-align: middle; }
#dex-header ul.inline-menu {  line-height: 1.2; }
#dex-header + h1 { margin-top: 0.25em; }

/* Header sublinks, e.g. pokemon | flavor | locations */
ul.inline-menu { text-align: middle; }
ul.inline-menu > li { display: inline; }
ul.inline-menu > li:after { content: ' | '; }
ul.inline-menu > li:last-child:after { content: none; }

/* Top section, with the portrait and stuff on the right side */
.dex-page-portrait { float: left; width: 15em; min-height: 10em; padding-bottom: 1em; text-align: center; }
.dex-page-portrait p { margin: 0.25em 0; line-height: 1; }
.dex-page-beside-portrait:after { display: block; clear: both; content: ""; }
p#dex-page-name { font-size: 2em; margin: 0.12em 0; }
#dex-pokemon-forme { font-size: 1.25em; font-weight: bold; }
#dex-pokemon-genus { font-size: 0.8em; margin: 0.31em 0; }
#dex-pokemon-portrait-sprite { height: 200px; width: 22em; margin: -35px -3em -35px -4em; padding: 7px; line-height: 200px; vertical-align: middle; text-align: center; background: url(${h.static_uri('pokedex', 'images/sprite-frame-x-y.png')}) center center no-repeat; }

#dex-item-portrait-sprite { height: 96px; width: 96px; padding: 7px; margin: .33em auto; line-height: 96px; vertical-align: middle; text-align: center; background: url(${h.static_uri('pokedex', 'images/sprite-frame.png')}) center center no-repeat; }

.dex-warrior-portrait { min-width: 176px; margin: auto 0.33em; }
#dex-pokemon-conquest-portrait-sprite { height: 128px; width: 128px; margin: 0.33em auto; padding: 7px; line-height: 128px; vertical-align: middle; text-align: center; background: url(${h.static_uri('pokedex', 'images/sprite-frame-conquest.png')}) center center no-repeat; }
.dex-warrior-portrait-sprite { height: 168px; width: 176px; margin: 0.33em 0; padding: 4px 0; background: url(${h.static_uri('pokedex', 'images/sprite-frame-conquest-warrior.png')}) center center no-repeat; }

/* List of types with damage (or whatever) below */
ul.dex-type-list { overflow: hidden /* new float context */; margin-bottom: 2em; }
ul.dex-type-list li { display: inline-block; text-align: center; padding: 0.125em; }
ul.dex-type-list li img { display: block; margin-bottom: 0.25em; }

/* Size comparison -- used by Pokémon and flavor */
.dex-size { height: 120px; padding-bottom: 2.5em /* for -value */; overflow: hidden /* new float context */}
.dex-size img { clip: 8px; position: absolute; bottom: 0; image-rendering: optimizeSpeed; image-rendering: -moz-crisp-edges; image-rendering: -webkit-optimize-contrast; image-rendering: -o-crisp-edges; -ms-interpolation-mode: nearest-neighbor; }
.dex-size input[type='text'] { text-align: right; }
.dex-size .dex-size-trainer,
.dex-size .dex-size-pokemon { display: block; position: relative; float: left; height: 100%; width: 50%; text-align: left; }
.dex-size .dex-size-trainer { text-align: right; }
.dex-size .dex-size-pokemon { text-align: left; }
.dex-size .dex-size-trainer img { right: 0.25em; }
.dex-size .dex-size-pokemon img { left: 0.25em; }
.dex-size .js-dex-size-raw { display: none; }
.dex-size .dex-size-value { position: absolute; height: 2em; margin: 0; line-height: 1; padding: 0.25em; bottom: -2.5em; }
.dex-size .dex-size-trainer .dex-size-value { right: 0.25em; }
.dex-size .dex-size-pokemon .dex-size-value { left: 0.25em; }

/* Conquest misc. */
table.dex-warriors td.warrior-icon { padding: 0 0.33em; }
table.dex-warriors td.max-link { width: 3em; }
.warrior-icon-small { border: 1px black solid; }
.warrior-icon-big { margin: 1px auto; }


/*** Individual pages ***/

/* Pokémon page -- ability list */
dl.pokemon-abilities p { margin: 0; padding: 0; }

/* Pokémon page -- grid of compatible breeding partners */
ul.dex-pokemon-compatibility { max-height: 136px /* four rows of icons plus borders */; }
ul.inline.dex-pokemon-compatibility { overflow: auto; }

/* Pokémon page -- wild held items */
table.dex-pokemon-held-items { width: 100%; }
table.dex-pokemon-held-items .versions { width: 48px /* three versions */; padding-right: 0.5em; }
table.dex-pokemon-held-items .rarity { width: 4em; padding-right: 0.5em; text-align: right; }
table.dex-pokemon-held-items tr.new-version { border-top: 1px dotted #c0c0c0; }
table.dex-pokemon-held-items tbody tr:first-child.new-version { border-top: none; }

/* Pokémon page -- evolution chain table */
table.dex-evolution-chain { width: 100%; table-layout: fixed; border-collapse: separate; border-spacing: 0.5em; empty-cells: hide; }
table.dex-evolution-chain td { padding: 0.5em; vertical-align: middle; border: 1px solid #d8d8d8; background: #f0f0f0; }
table.dex-evolution-chain td:hover { border: 1px solid #bfd3f1; background: #e6eefa; }
table.dex-evolution-chain td.selected { border: 1px solid #95b7ea; background: #bfd4f2; }
.dex-evolution-chain-method { display: block; overflow: hidden; font-size: 0.8em; line-height: 1.25em; }
.dex-evolution-chain-pokemon { padding-top: 8px /* bump icon up a bit */; display: block; font-weight: bold; }
.dex-evolution-chain-pokemon img,
.dex-evolution-chain-pokemon .sprite-icon { float: left; margin-top: -8px /* fills link's top padding */; margin-right: 0.33em; }

/* Pokémon page -- stats table */
table.dex-pokemon-stats { width: 100%; }
table.dex-pokemon-stats th label { display: block; text-align: right; font-weight: normal; color: #2457a0; }
table.dex-pokemon-stats th input { text-align: left; }
table.dex-pokemon-stats .dex-pokemon-stats-bar-container { background: #f8f8f8; }
table.dex-pokemon-stats .dex-pokemon-stats-bar { padding: 0.33em; border: 1px solid #d8d8d8; background: #f0f0f0; }
table.dex-pokemon-stats td.dex-pokemon-stats-pctile { text-align: right; }
table.dex-pokemon-stats td.dex-pokemon-stats-result { text-align: right; }

/* Pokémon page -- simple-encounters list */
.dex-simple-encounters-method { margin-bottom: 0.5em; }
dl.dex-simple-encounters dd img { vertical-align: bottom; }
dl.dex-simple-encounters ul { display: inline; }
dl.dex-simple-encounters ul li { display: inline; }
dl.dex-simple-encounters ul li:after { content: '; '; }
dl.dex-simple-encounters ul li:last-child:after { content: ''; }

/* Pokémon page -- Pokéathlon performance */
.dex-pokeathlon-stats { display: inline-block; }
.dex-pokeathlon-stats p { text-align: center; }
.dex-pokeathlon-stats dt { width: 7em; }
.dex-pokeathlon-stats dd { padding-left: 7.5em; width: 80px; }

/* Pokémon page -- cry */
/* Mozilla's player changes its height proportionate to its width by default or something */
audio.cry { width: 100%; height: 35px; }

/* Pokémon flavor -- color */
.dex-color-black,
.dex-color-blue,
.dex-color-brown,
.dex-color-gray,
.dex-color-green,
.dex-color-pink,
.dex-color-purple,
.dex-color-red,
.dex-color-white,
.dex-color-yellow { display: inline-block; height: 1em; width: 1em; border: 1px solid #606060; vertical-align: middle; }
.dex-color-black    { background: black; }
.dex-color-blue     { background: blue; }
.dex-color-brown    { background: brown; }
.dex-color-gray     { background: gray; }
.dex-color-green    { background: green; }
.dex-color-pink     { background: pink; }
.dex-color-purple   { background: purple; }
.dex-color-red      { background: red; }
.dex-color-white    { background: white; }
.dex-color-yellow   { background: yellow; }

/* Pokémon flavor page -- tables of sprites */
table.dex-pokemon-flavor-sprites td { vertical-align: middle /* sprites aren't always the same height within a row */; }
table.dex-pokemon-flavor-sprites td.dex-pokemon-flavor-no-sprite { text-align: center; }

/* Pokémon flavor page -- RBY sprite needs doublesizin' */
.dex-pokemon-flavor-rby-back img { width: 64px; image-rendering: optimizeSpeed; image-rendering: -moz-crisp-edges; image-rendering: -webkit-optimize-contrast; image-rendering: -o-crisp-edges; -ms-interpolation-mode: nearest-neighbor; }

/* Pokémon flavor page -- flavor text */
dl.dex-flavor-text dt { width: 96px /* enough for 5 versions and padding*/; }
dl.dex-flavor-text dd { padding-left: 96px; margin-left: .5em; }
dl.dex-flavor-text dt.dex-flavor-generation { width: auto; text-align: left; margin: 0;padding: 0; }
dl.dex-flavor-text dt.dex-flavor-generation + dd { padding-left: 32px; }
dl.dex-pokemon-flavor-text dt { width: 80px /* enough for 4 versions and padding */; }
dl.dex-pokemon-flavor-text dd { padding-left: 80px; }

/* Pokémon flavor page -- client-resize Sugimori art */
p.dex-sugimori img { max-width: 100%; }

/* Move page -- flags list */
ul.dex-move-flags .markdown { font-size: 0.8em; font-style: italic; color: #404040; }
ul.dex-move-flags .markdown p { margin-bottom: 0.33em; }
ul.dex-move-flags li.disabled a { font-weight: normal; color: #c0c0c0; }
ul.dex-move-flags li.disabled a:hover { color: #ce3131; }

/* Location page and Pokémon location page -- entire bigass table */
table.dex-encounters td { padding-left: 0.5em; padding-right: 0.5em; vertical-align: top; }
table.dex-encounters td.location { vertical-align: top; }
table.dex-encounters th.location { vertical-align: top; text-align: left; }
.dex-location-area { font-size: 0.8em; font-style: italic; color: black; }
.dex-encounter-condition-group { padding: 0.5em 0; }
.dex-encounter-condition-group + .dex-encounter-condition-group { border-top: 1px solid #404040; }
.dex-encounter-conditions + .dex-encounter-conditions { margin-top: 0.5em; }
.dex-encounter-conditions .dex-encounter-icon { float: left; width: 24px; height: 24px; line-height: 24px; text-align: center; overflow: hidden;}
.dex-encounter-conditions .dex-encounter-icon img { vertical-align: middle; }
.dex-encounter-conditions .dex-encounter-rarity { float: right; }
.dex-encounter-conditions .dex-rarity-bar { position: relative; overflow: auto; font-size: 0.83em; height: 1em; line-height: 1; margin-top: 0.25em; background: #e8e8e8; border: 1px solid #96bbf2; }
.dex-encounter-conditions .dex-rarity-bar-fill { height: 100%; background: #96bbf2; }
.dex-encounter-conditions .dex-rarity-bar-fills { float: left; height: 100%; background: #96bbf2; }
.dex-encounter-conditions .dex-rarity-bar-fills + .dex-rarity-bar-fills { margin-left: -1px; border-left: 1px solid #b3cef6; }
.dex-encounter-conditions .dex-rarity-bar-fills:hover { background: #668dcc; }
.dex-encounter-conditions .dex-rarity-bar-value { position: absolute; height: 100%; top: 0; right: 0; color: #808080; vertical-align: bottom; }

/* Item page -- pocket list at the top */
ul#dex-item-pockets { text-align: center; }
ul#dex-item-pockets li { display: inline-block; }
ul#dex-item-pockets li img { padding: 4px; }

/* Conquest Pokémon page -- move dl */
dl.dex-conquest-pokemon-move dt { float: none; clear: none; width: auto; text-align: right; margin-left: 1em; margin-right: 0; display: inline-block; vertical-align: middle; }
dl.dex-conquest-pokemon-move dd { padding-left: 0; display: inline-block; vertical-align: middle;}
dl.dex-conquest-pokemon-move dd:after { display: none; }
dl.dex-conquest-pokemon-move dd p { margin: 0; }
dl.dex-conquest-pokemon-move dt.dex-cpm-name,
dl.dex-conquest-pokemon-move dt.dex-cpm-type,
dl.dex-conquest-pokemon-move dt.dex-cpm-range { display: none; }
dd.dex-cpm-type, dd.dex-cpm-range { margin: auto 1px auto 0; }
/* Make the name pretend to be a dt */
dd.dex-cpm-name { width: 11.5em; text-align: right; padding-left: 0; }
dl.dex-conquest-pokemon-move dd.dex-cpm-name:after { display: inline; content: ':'; visibility: visible; }

/* Conquest move page -- range diagram */
.dex-conquest-move-range { float: right; margin-right: 1.5em; margin-left: 0.5em; }

/* Conquest warrior page -- skill list */
dt.dex-warrior-skill-rank { width: 2em; margin-right: 0; }
dt.dex-warrior-skill-rank + dt.dex-warrior-skill-name { width: 9.5em; clear: none }


/*** Lists ***/

table.dex-ability-list td { padding: 0.33em 0.5em; }
table.dex-ability-list p { margin: 0; padding: 0; }

table.dex-nature-list td { padding: 0.33em 1em 0.33em 0.75em; }
table.dex-nature-list td.flavor { text-align: right; }

table.dex-type-chart td { text-align: center; vertical-align: middle; }
table.dex-type-chart td.dex-damage-dealt-100 { color: #e0e0e0; }
/* Hover colors clash; dim the 100% color a bit less on hover */
table.dex-type-chart.striped-rows tr td.js-hover.dex-damage-dealt-100,
table.dex-type-chart.striped-rows tr:hover td.dex-damage-dealt-100 { color: #aaa; }


/*** Searches ***/

/* Custom table and custom list display */
.no-js .js-instructions { display: none; }
.dex-search-display-columns ul.js-dex-search-column-picker { column-count: 2; -moz-column-count: 2; -webkit-column-count: 2; }
.no-js .dex-column.dex-search-display-list { margin-left: 33.666%; }
.dex-search-display-list-reference dl { overflow: auto; max-height: 24em; }
/* Only show the table/list controls when the right display mode is selected */
body.js .dex-column-container .dex-search-display-columns { display: none; }
body.js .dex-column-container .dex-search-display-list    { display: none; }
body.js .dex-column-container .dex-search-display-list-reference { display: none; }
body.js .dex-column-container.js-dex-search-display-table .dex-search-display-columns { display: block; }
body.js .dex-column-container.js-dex-search-display-list  .dex-search-display-list    { display: block; }
body.js .dex-column-container.js-dex-search-display-list  .dex-search-display-list-reference { display: block; }
/* Style the js sortables */
.dex-search-display-columns ul.checked { float: left; width: 48%; margin: 0 1%; border: 1px solid #bfd3f1; }
.dex-search-display-columns ul.unchecked { margin: 0 1% 0 51%; }
.dex-search-display-columns ul.checked li,
.dex-search-display-columns ul.unchecked li { padding: 0.33em 0.5em; cursor: move; }
.dex-search-display-columns ul.checked li label,
.dex-search-display-columns ul.unchecked li label { cursor: move; }
.dex-search-display-columns ul.checked li { background: #e6eefa; }
.dex-search-display-columns ul.unchecked li { background: #f4f4f4; color: #606060; }
.dex-search-display-columns ul.checked input,
.dex-search-display-columns ul.unchecked input { display: none; }

/* Pokémon search -- showing a list */
.dex-pokemon-search-list { line-height: 1.33; font-family: monospace; }
.dex-pokemon-search-list a { font-weight: normal; }

/* Pokémon search -- move versions */
table#dex-pokemon-search-move-versions td { padding-right: 2em; }

/* Move search -- category list */
.dex-move-search-categories { overflow: auto; max-height: 15em; }


/*** Gadgets ***/

/* Pokéball performance results */
table.dex-capture-rates td { vertical-align: middle; }
table.dex-capture-rates th.item { text-align: left; }
table.dex-capture-rates td.chance { text-align: right; }
table.dex-capture-rates td.condition { font-size: 0.8em; font-style: italic; }
table.dex-capture-rates td.expected-attempts { text-align: right; padding-right: 1em /* title is wide; offset a bit */; }
table.dex-capture-rates tr.inactive td { color: #909090; }
div.dex-capture-rate-graph { display: inline-block; position: relative; width: 10em; height: 1.3em; background: #79cc66; }
div.dex-capture-rate-graph-bar { float: left; height: 100%; }
p.dex-capture-rate-legend span { padding: 0.25em; }
.wobble0 { background: #cc6666; }
.wobble1 { background: #d88c8c; }
.wobble2 { background: #e5b2b2; }
.wobble3 { background: #f2d9d9; }
.wobble4 { background: #79cc66; }
table.dex-capture-rates tr.inactive div.dex-capture-rate-graph { opacity: 0.25; }

/* Pokéball performance -- HP bar for HP-remaining input */
.dex-hp-bar { display: inline-block; height: 3px; width: 48px; margin: 0.25em; padding: 6px 2px 7px 16px /* 4px of extra vertical padding for click space */; vertical-align: middle; background: url(${h.static_uri('pokedex', 'images/hp-bar.png')}) center left no-repeat; }
.dex-hp-bar .dex-hp-bar-bar { width: 100%; height: 100%; }
.dex-hp-bar .dex-hp-bar-bar.green  { background-color: #18c31f; }
.dex-hp-bar .dex-hp-bar-bar.yellow { background-color: #d7ac00; }
.dex-hp-bar .dex-hp-bar-bar.red    { background-color: #be2821; }

/* Pokémon comparison */
ul.dex-compare-pokemon-version-list { display: inline-block; }
ul.dex-compare-pokemon-version-list li { display: inline-block; padding: 0 0.5em; }

table.dex-compare-pokemon { width: 100%; margin-top: 0.5em; table-layout: fixed; }
form + table.dex-compare-pokemon { margin-top: 0; }
table.dex-compare-pokemon col.labels { width: 13em; }
table.dex-compare-pokemon .dex-compare-suggestions th { padding: 0.5em; vertical-align: bottom; text-align: left; }
table.dex-compare-pokemon .header-row input[type='text'] { width: 95%; }
table.dex-compare-pokemon td { line-height: 1.33; }
table.dex-compare-pokemon tbody th { text-align: left; }
table.dex-compare-pokemon tr.subheader-row th { padding: 0.33em 0.5em; font-weight: bold; }

table.dex-compare-pokemon tr.size td,
table.dex-compare-pokemon tr.size th { height: 96px; line-height: 96px; text-align: left; vertical-align: bottom; }
table.dex-compare-pokemon tr.size td { text-align: center; }
table.dex-compare-pokemon tr.size th { text-align: left; }
table.dex-compare-pokemon tr.size img { vertical-align: bottom; image-rendering: optimizeSpeed; image-rendering: -moz-crisp-edges; image-rendering: -webkit-optimize-contrast; image-rendering: -o-crisp-edges; -ms-interpolation-mode: nearest-neighbor; }
table.dex-compare-pokemon tr.dex-compare-list td { text-align: center; vertical-align: top; }
table.dex-compare-pokemon tr.dex-compare-relative td { font-size: 1.5em; padding-right: 3%; text-align: right; font-weight: bold; }
table.dex-compare-pokemon tr.dex-compare-flavor-text td { text-align: center; }
table.dex-compare-pokemon tr.dex-compare-hidden-ability td { text-align: center; font-style: italic; }
table.dex-compare-pokemon.dex-compare-pokemon-moves td { text-align: center; }
table.dex-compare-pokemon.dex-compare-pokemon-moves th.versions { text-align: left; }

/* Stat calculator */
.dex-col-stat-calc-labels { width: 8em; }
.dex-col-stat-calc { width: 4em; }
table.dex-stat-calculator { margin-bottom: 2em; }
table.dex-stat-calculator tbody th { text-align: right; vertical-align: baseline; }
table.dex-stat-calculator tbody tr.subheader-row th { text-align: left; }
table.dex-stat-calculator td { text-align: center; }
table.dex-stat-calculator td,
table.dex-stat-calculator th { line-height: 1.33; }
table.dex-stat-calculator td.impossible { text-decoration: underline; color: darkred; }
table.dex-stat-calculator td.-possible-genes { padding-left: 1em; padding-right: 1em; text-align: left; vertical-align: top; /* need this because the graph has no text, so 'baseline' pushes it way up */ }
table.dex-stat-calculator td .-valid-range { font-size: 0.8em; line-height: 2em; }
p.dex-stat-calculator-protip { font-size: 0.8em; padding-left: 1em; line-height: 1.33; text-align: left; font-style: italic; color: #606060; }
p.dex-stat-calculator-clipboard { margin-left: 4em; margin-right: 4em; padding: 0.5em 1em; font-family: monospace; background: #e8e8e8; }

div.dex-stat-graph { overflow: hidden; height: 1.5em; margin: 0 0 0.33em; border: 1px solid #c0c0c0; background: white; border-radius: 2px; }
div.dex-stat-graph div.point,
div.dex-stat-graph div.pointless { float: left; height: 1.5em; width: 0.5em; }
div.dex-stat-graph div.point { background: #c0c0c0; }

div.dex-stat-vertical-graph { width: 1.5em; margin: 0 auto; border: 1px solid #c0c0c0; background: white; border-radius: 2px; }
div.dex-stat-vertical-graph div.point,
div.dex-stat-vertical-graph div.pointless { width: 1.5em; height: 0.5em; }
div.dex-stat-vertical-graph div.point { background: #c0c0c0; }

/* Who's that Pokémon */
#js-dex-wtp { position: relative; width: 50em; height: 32em; margin: 2em auto; border: 1px solid #d0d0d0; background: #e8e8e8; }
/* Use the class on this element to toggle the game state; by default everything is hidden */
#js-dex-wtp                 #js-dex-wtp-loading  { display: none; }
#js-dex-wtp.state-loading   #js-dex-wtp-loading  { display: block; }
#js-dex-wtp                 #js-dex-wtp-options  { display: none; }
#js-dex-wtp.state-off       #js-dex-wtp-options  { display: block; }
#js-dex-wtp                 #js-dex-wtp-thinking { display: none; }
#js-dex-wtp.state-thinking  #js-dex-wtp-thinking { display: block; }
#js-dex-wtp                 #js-dex-wtp-board    { display: none; }
#js-dex-wtp.state-playing   #js-dex-wtp-board    { display: block; }
#js-dex-wtp.state-answering #js-dex-wtp-board    { display: block; }
#js-dex-wtp                 #js-dex-wtp-result   { display: none; }
#js-dex-wtp.state-answering #js-dex-wtp-result   { display: block; }
/* Starting options dialog thing */
#js-dex-wtp-options p.intro { font-size: 1.5em; margin: 0.67em; text-align: center; }
#js-dex-wtp-options ul.dex-column2 li { font-size: 1.5em; margin: 0.5em 2em; }
#js-dex-wtp-options p.go { position: absolute; left: 1em; bottom: 1em; right: 1em; text-align: center; }
#js-dex-wtp-options #js-dex-wtp-start { font-size: 2em; padding: 0.33em 2em; }
/* Questions */
#js-dex-wtp-thinking { font-size: 2em; height: 100%; width: 100%; line-height: 16em; color: #808080; text-align: center; vertical-align: middle; }
#js-dex-wtp-board { height: 75%; }
#js-dex-wtp-board .question { height: 61%; padding: 5% 1em; text-align: center; }
#js-dex-wtp-board .answer { font-size: 1.25em; height: 33%; padding: 0 3em; text-align: center; }
#js-dex-wtp-result { height: 15%; padding: 5% 3em; text-align: center; }


/*** Static pages ***/

/* Big lookup box above the Pokédex instructions */
#big-pokedex-lookup { font-size: 2em; text-align: center; }
#big-pokedex-lookup input { font-size: 1em; }


/*** Cheat codes ***/

/* Cheat code unlock page */
#dex-cheat-unlocked { overflow: hidden /* float containment */; width: 60%; margin: auto; margin-top: 10em; }
#dex-cheat-unlocked .dex-cheat-unlocked-left { float: left; }
#dex-cheat-unlocked .dex-cheat-unlocked-right { float: right; }
#dex-cheat-unlocked .dex-cheat-unlocked-line1 { font-size: 48px; font-weight: bold; text-align: center; text-transform: uppercase; }
#dex-cheat-unlocked .dex-cheat-unlocked-line2 { font-size: 34px; font-weight: bold; text-align: center; text-transform: uppercase; }
#dex-cheat-list { margin-top: 1em; margin-bottom: 5em; text-align: center; }
#dex-cheat-list li { display: inline; padding: 0.5em 1em; }
#dex-cheat-list li.this-cheat { font-weight: bold; }

/* obdurate cheat code */
p.dex-obdurate { margin: .5em 0 1.1em; line-height: 1.1; white-space: nowrap; font-size: 8px; }
