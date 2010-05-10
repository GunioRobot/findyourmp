class UpMyStreetCode

  CODES = {
298 => "hackney-north-and-stoke-newington",
575 => "windsor",
598 => "carmarthen-west-and-south-pembrokeshire",
199 => "east-surrey",
210 => "coventry-north-east",
802 => "inverness-nairn-badenoch-and-strathspey",
839 => "paisley-and-renfrewshire-south",
614 => "southend-west",
55 => "devizes",
252 => "blaydon",
60 => "rossendale-and-darwen",
383 => "north-east-hampshire",
258 => "north-west-durham",
224 => "staffordshire-moorlands",
142 => "hexham",
284 => "dudley-north",
228 => "erith-and-thamesmead",
423 => "south-norfolk",
42 => "west-bromwich-west",
638 => "redcar",
94 => "lewes",
411 => "banbury",
480 => "normanton",
820 => "ochil-and-south-perthshire",
102 => "bexhill-and-battle",
92 => "hove",
187 => "billericay",
309 => "edinburgh-west",
273 => "rother-valley",
475 => "leeds-west",
657 => "city-of-york",
1 => "aberdeen-south",
520 => "berwick-upon-tweed",
635 => "middlesbrough",
542 => "north-west-norfolk",
474 => "leeds-central",
444 => "bootle",
550 => "newbury",
404 => "buckingham",
118 => "kingswood",
587 => "sheffield-attercliffe",
507 => "northampton-south",
241 => "erewash",
250 => "city-of-durham",
485 => "salford",
422 => "waveney",
585 => "sheffield-brightside",
201 => "reigate",
534 => "wellingborough",
451 => "south-ribble",
215 => "daventry",
97 => "worthing-west",
324 => "exeter",
495 => "altrincham-and-sale-west",
198 => "carshalton-and-wallington",
202 => "canterbury",
559 => "south-east-cornwall",
157 => "cardiff-west",
579 => "hornchurch",
80 => "mid-dorset-and-north-poole",
850 => "kirkcaldy-and-cowdenbeath",
295 => "west-ham",
516 => "newcastle-upon-tyne-east-and-wallsend",
807 => "dumfries-and-galloway",
838 => "kilmarnock-and-loudoun",
328 => "taunton",
325 => "tiverton-and-honiton",
4 => "gordon",
164 => "rhondda",
543 => "regent-s-park-and-north-kensington",
32 => "birmingham-northfield",
479 => "elmet",
499 => "leigh",
182 => "west-chelmsford",
321 => "enfield-southgate",
433 => "sutton-and-cheam",
509 => "north-east-bedfordshire",
25 => "solihull",
390 => "brent-south",
76 => "bournemouth-west",
518 => "north-tyneside",
21 => "birmingham-hodge-hill",
430 => "twickenham",
582 => "sheffield-central",
854 => "inverclyde",
371 => "witney",
523 => "tynemouth",
135 => "east-londonderry",
522 => "blyth-valley",
233 => "north-east-fife",
849 => "orkney-and-shetland",
195 => "harwich",
218 => "stone",
594 => "gower",
271 => "brigg-and-goole",
71 => "morley-and-rothwell",
179 => "wirral-south",
84 => "bury-north",
79 => "christchurch",
402 => "barnsley-west-and-penistone",
10 => "hertsmere",
630 => "tunbridge-wells",
840 => "north-ayrshire-and-arran",
501 => "gillingham",
538 => "norwich-south",
246 => "rushcliffe",
831 => "coatbridge-chryston-and-bellshill",
584 => "sheffield-hallam",
259 => "tyne-bridge",
369 => "cotswold",
165 => "cynon-valley",
528 => "gedling",
491 => "stockport",
300 => "leyton-and-wanstead",
815 => "linlithgow-and-east-falkirk",
227 => "old-bexley-and-sidcup",
636 => "stockton-north",
449 => "west-lancashire",
650 => "pontefract-and-castleford",
301 => "islington-north",
515 => "newcastle-upon-tyne-central",
327 => "torridge-and-west-devon",
599 => "preseli-pembrokeshire",
401 => "wakefield",
580 => "dagenham",
74 => "keighley",
255 => "easington",
209 => "coventry-south",
141 => "workington",
65 => "skipton-and-ripon",
447 => "crosby",
814 => "edinburgh-south-west",
429 => "kingston-and-surbiton",
156 => "caerphilly",
833 => "glasgow-south-west",
536 => "blaenau-gwent",
374 => "monmouth",
532 => "grantham-and-stamford",
68 => "shipley",
275 => "haltemprice-and-howden",
240 => "burton",
609 => "southampton-itchen",
313 => "livingston",
365 => "gloucester",
323 => "hendon",
148 => "huntingdon",
89 => "heywood-and-middleton",
811 => "holborn-and-st-pancras",
120 => "belfast-north",
125 => "lagan-valley",
848 => "central-ayrshire",
3 => "aberdeen-north",
461 => "charnwood",
482 => "mid-bedfordshire",
106 => "lewisham-west",
366 => "stroud",
615 => "rochford-and-southend-east",
459 => "rutland-and-melton",
296 => "chingford-and-woodford-green",
287 => "ludlow",
136 => "foyle",
177 => "wallasey",
446 => "liverpool-garston",
111 => "eltham",
440 => "liverpool-riverside",
78 => "bournemouth-east",
238 => "north-east-derbyshire",
268 => "barnsley-east-and-mexborough",
612 => "sunderland-north",
61 => "ribble-valley",
225 => "bexleyheath-and-crayford",
110 => "sevenoaks",
217 => "newcastle-under-lyme",
453 => "westmorland-and-lonsdale",
512 => "hornsey-and-wood-green",
176 => "birkenhead",
293 => "cities-of-london-and-westminster",
617 => "stoke-on-trent-central",
291 => "poplar-and-canning-town",
619 => "stoke-on-trent-south",
267 => "don-valley",
155 => "newport-west",
16 => "stevenage",
46 => "bath",
631 => "hastings-and-rye",
652 => "worcester",
116 => "woodspring",
163 => "aberavon",
184 => "rayleigh",
150 => "south-west-norfolk",
208 => "north-thanet",
292 => "bethnal-green-and-bow",
416 => "ilford-south",
392 => "brent-north",
458 => "harborough",
398 => "south-west-hertfordshire",
856 => "st-ives",
33 => "walsall-south",
297 => "walthamstow",
99 => "bognor-regis-and-littlehampton",
539 => "norwich-north",
576 => "romsey",
406 => "chesham-and-amersham",
556 => "plymouth-sutton",
18 => "birmingham-sparkbrook-and-small-heath",
493 => "wythenshawe-and-sale-east",
633 => "falmouth-and-camborne",
257 => "bishop-auckland",
408 => "wycombe",
639 => "scarborough-and-whitby",
382 => "surrey-heath",
373 => "north-wiltshire",
434 => "epsom-and-ewell",
207 => "ashford",
626 => "putney",
263 => "ryedale",
407 => "beaconsfield",
595 => "llanelli",
308 => "edinburgh-south",
269 => "selby",
420 => "suffolk-coastal",
492 => "denton-and-reddish",
261 => "richmond-yorks",
596 => "neath",
222 => "weaver-vale",
508 => "bedford",
312 => "midlothian",
477 => "leeds-north-east",
386 => "runnymede-and-weybridge",
432 => "wimbledon",
562 => "portsmouth-south",
624 => "hammersmith-and-fulham",
173 => "delyn",
606 => "camberwell-and-peckham",
367 => "forest-of-dean",
549 => "oxford-west-and-abingdon",
832 => "glasgow-south",
329 => "north-devon",
146 => "saffron-walden",
167 => "merthyr-tydfil-and-rhymney",
555 => "south-holland-and-the-deepings",
39 => "halesowen-and-rowley-regis",
15 => "north-east-hertfordshire",
274 => "wentworth",
50 => "somerton-and-frome",
51 => "wells",
22 => "birmingham-yardley",
517 => "newcastle-upon-tyne-north",
568 => "preston",
96 => "wealden",
519 => "jarrow",
526 => "nottingham-east",
93 => "arundel-and-south-downs",
127 => "north-down",
180 => "wirral-west",
457 => "leicester-west",
853 => "ashton-under-lyne",
107 => "streatham",
294 => "hackney-south-and-shoreditch",
565 => "fareham",
417 => "barking",
253 => "gateshead-east-and-washington-west",
602 => "vauxhall",
472 => "sleaford-and-north-hykeham",
464 => "kettering",
226 => "gravesham",
590 => "chesterfield",
817 => "lanark-and-hamilton-east",
245 => "ashfield",
463 => "corby",
481 => "luton-north",
108 => "orpington",
376 => "cheltenham",
231 => "dundee-east",
206 => "folkestone-and-hythe",
144 => "cambridge",
443 => "knowsley-north-and-sefton-east",
384 => "aldershot",
410 => "henley",
160 => "pontypridd",
62 => "chorley",
486 => "stretford-and-urmston",
601 => "north-southwark-and-bermondsey",
611 => "eastleigh",
341 => "blackpool-north-and-fleetwood",
380 => "south-west-surrey",
494 => "cheadle",
842 => "ruislip-northwood",
454 => "barrow-and-furness",
86 => "bolton-south-east",
591 => "barnsley-central",
837 => "east-kilbride-strathaven-and-lesmahagow",
162 => "ogmore",
339 => "fylde",
514 => "hampstead-and-highgate",
553 => "peterborough",
592 => "swansea-east",
188 => "north-essex",
44 => "tamworth",
279 => "kingston-upon-hull-west-and-hessle",
414 => "kingston-upon-hull-north",
174 => "clwyd-west",
646 => "warrington-north",
251 => "north-durham",
23 => "birmingham-selly-oak",
466 => "clwyd-south",
605 => "dulwich-and-west-norwood",
818 => "falkirk",
488 => "manchester-gorton",
627 => "shrewsbury-and-atcham",
533 => "northampton-north",
497 => "worsley",
641 => "brentford-and-isleworth",
642 => "feltham-and-heston",
375 => "hereford",
87 => "bolton-west",
254 => "houghton-and-washington-east",
846 => "ross-skye-and-lochaber",
178 => "liverpool-wavertree",
54 => "salisbury",
625 => "tooting",
620 => "stafford",
441 => "liverpool-walton",
26 => "bromsgrove",
658 => "east-yorkshire",
81 => "south-dorset",
431 => "richmond-park",
637 => "middlesbrough-south-and-east-cleveland",
204 => "south-thanet",
191 => "epping-forest",
104 => "beckenham",
540 => "north-norfolk",
513 => "tottenham",
506 => "north-east-milton-keynes",
147 => "south-cambridgeshire",
56 => "yeovil",
235 => "derby-north",
813 => "edinburgh-north-and-leith",
490 => "manchester-withington",
277 => "gainsborough",
90 => "brighton-pavilion",
57 => "west-dorset",
588 => "high-peak",
88 => "bury-south",
52 => "bridgwater",
409 => "aylesbury",
11 => "hitchin-and-harpenden",
623 => "battersea",
483 => "manchester-central",
467 => "meirionnydd-nant-conwy",
419 => "central-suffolk-and-north-ipswich",
98 => "east-worthing-and-shoreham",
320 => "edmonton",
465 => "wrexham",
38 => "mid-worcestershire",
827 => "rutherglen-and-hamilton-west",
24 => "birmingham-hall-green",
75 => "calder-valley",
113 => "bristol-east",
563 => "portsmouth-north",
648 => "makerfield",
126 => "south-antrim",
200 => "mitcham-and-morden",
122 => "belfast-south",
643 => "hayes-and-harlington",
285 => "wolverhampton-south-east",
829 => "west-dunbartonshire",
230 => "dundee-west",
128 => "south-down",
805 => "mid-ulster",
334 => "stirling",
278 => "cleethorpes",
385 => "bracknell",
824 => "glasgow-north",
819 => "cumbernauld-kilsyth-and-kirkintilloch-east",
581 => "thurrock",
139 => "penrith-and-the-border",
237 => "west-derbyshire",
843 => "na-h-eileanan-an-iar",
393 => "harrow-east",
589 => "rotherham",
607 => "slough",
20 => "birmingham-perry-barr",
804 => "st-albans",
649 => "dewsbury",
378 => "woking",
239 => "amber-valley",
272 => "bassetlaw",
36 => "stratford-on-avon",
656 => "wolverhampton-south-west",
340 => "blackpool-south",
500 => "medway",
825 => "glasgow-north-east",
138 => "carlisle",
826 => "glasgow-east",
387 => "east-hampshire",
381 => "horsham",
573 => "maidenhead",
496 => "oldham-west-and-royton",
531 => "mansfield",
280 => "newark",
471 => "lincoln",
153 => "cardiff-south-and-penarth",
260 => "darlington",
524 => "south-shields",
266 => "doncaster-north",
171 => "ellesmere-port-and-neston",
389 => "basingstoke",
377 => "guildford",
30 => "sutton-coldfield",
281 => "great-grimsby",
314 => "east-lothian",
577 => "crawley",
418 => "ipswich",
161 => "bridgend",
810 => "berwickshire-roxburgh-and-selkirk",
13 => "luton-south",
537 => "newport-east",
154 => "cardiff-north",
276 => "scunthorpe",
149 => "north-east-cambridgeshire",
400 => "colne-valley",
478 => "leeds-east",
476 => "leeds-north-west",
808 => "dumfriesshire-clydesdale-and-tweeddale",
583 => "sheffield-heeley",
521 => "wansbeck",
834 => "east-renfrewshire",
535 => "torfaen",
49 => "westbury",
117 => "bristol-north-west",
103 => "bromley-and-chislehurst",
186 => "braintree",
48 => "wansdyke",
388 => "winchester",
34 => "north-warwickshire",
172 => "eddisbury",
445 => "knowsley-south",
212 => "nuneaton",
628 => "montgomeryshire",
221 => "tatton",
809 => "ayr-carrick-and-cumnock",
196 => "croydon-south",
470 => "ynys-mon",
145 => "south-east-cambridgeshire",
242 => "broxtowe",
219 => "north-shropshire",
41 => "dudley-south",
109 => "croydon-central",
12 => "hemel-hempstead",
119 => "weston-super-mare",
183 => "brentwood-and-ongar",
35 => "warwick-and-leamington",
59 => "hyndburn",
391 => "ealing-north",
105 => "lewisham-east",
63 => "pendle",
413 => "kingston-upon-hull-east",
597 => "carmarthen-east-and-dinefwr",
115 => "bristol-south",
193 => "hertford-and-stortford",
621 => "the-wrekin",
205 => "dover",
569 => "southport",
655 => "wolverhampton-north-east",
547 => "stalybridge-and-hyde",
185 => "harlow",
396 => "uxbridge",
603 => "greenwich-and-woolwich",
571 => "wokingham",
143 => "copeland",
822 => "argyll-and-bute",
816 => "airdrie-and-shotts",
821 => "dunfermline-and-west-fife",
622 => "kensington-and-chelsea",
73 => "halifax",
460 => "blaby",
6 => "moray",
828 => "glasgow-north-west",
368 => "tewkesbury",
211 => "coventry-north-west",
124 => "strangford",
123 => "belfast-east",
330 => "north-cornwall",
67 => "bradford-north",
578 => "romford",
546 => "rochdale",
836 => "motherwell-and-wishaw",
851 => "glenrothes",
175 => "vale-of-clwyd",
604 => "lewisham-deptford",
845 => "bury-st-edmunds",
169 => "city-of-chester",
194 => "colchester",
319 => "enfield-north",
803 => "banff-and-buchan",
632 => "torbay",
823 => "glasgow-central",
302 => "ilford-north",
557 => "plymouth-devonport",
405 => "south-west-bedfordshire",
14 => "welwyn-hatfield",
644 => "ealing-southall",
229 => "chatham-and-aylesford",
399 => "huddersfield",
43 => "aldridge-brownhills",
835 => "paisley-and-renfrewshire-north",
17 => "birmingham-ladywood",
473 => "boston-and-skegness",
29 => "birmingham-erdington",
527 => "nottingham-south",
129 => "upper-bann",
424 => "mid-norfolk",
244 => "bolsover",
544 => "ealing-acton-and-shepherd-s-bush",
548 => "oxford-east",
586 => "sheffield-hillsborough",
189 => "basildon",
452 => "morecambe-and-lunesdale",
37 => "redditch",
159 => "vale-of-glamorgan",
800 => "west-aberdeenshire-and-kincardine",
608 => "south-swindon",
95 => "mid-sussex",
455 => "leicester-south",
645 => "warrington-south",
27 => "warley",
31 => "meriden",
616 => "castle-point",
502 => "tonbridge-and-malling",
505 => "milton-keynes-south-west",
560 => "totnes",
487 => "eccles",
112 => "dartford",
812 => "edinburgh-east",
58 => "blackburn",
558 => "south-west-devon",
484 => "manchester-blackley",
19 => "birmingham-edgbaston",
415 => "beverley-and-holderness",
498 => "hazel-grove",
70 => "bradford-south",
82 => "new-forest-west",
830 => "east-dunbartonshire",
283 => "east-devon",
77 => "poole",
170 => "alyn-and-deeside",
262 => "stockton-south",
45 => "north-west-leicestershire",
435 => "esher-and-walton",
855 => "truro-and-st-austell",
288 => "wyre-forest",
303 => "brent-east",
394 => "harrow-west",
304 => "islington-south-and-finsbury",
847 => "caithness-sutherland-and-easter-ross",
299 => "east-ham",
216 => "crewe-and-nantwich",
529 => "sherwood",
236 => "south-derbyshire",
168 => "islwyn",
214 => "bosworth",
270 => "hemsworth",
69 => "pudsey",
567 => "isle-of-wight",
91 => "brighton-kemptown",
651 => "wigan",
448 => "halton",
100 => "chichester",
64 => "burnley",
370 => "wantage",
554 => "north-west-cambridgeshire",
456 => "leicester-east",
566 => "gosport",
322 => "chipping-barnet",
511 => "finchley-and-golders-green",
192 => "broxbourne",
342 => "lancaster-and-wyre",
618 => "stoke-on-trent-north",
53 => "north-dorset",
40 => "stourbridge",
397 => "watford",
442 => "liverpool-west-derby",
101 => "eastbourne",
190 => "upminster",
28 => "west-bromwich-east",
857 => "st-helens-north",
47 => "northavon",
5 => "angus",
610 => "southampton-test",
181 => "maldon-and-east-chelmsford",
197 => "croydon-north",
504 => "maidstone-and-the-weald",
289 => "leominster",
564 => "havant",
593 => "swansea-west",
468 => "conwy",
469 => "caernarfon",
600 => "ceredigion",
166 => "brecon-and-radnorshire",
114 => "bristol-west",
403 => "harrogate-and-knaresborough",
158 => "cardiff-central",
372 => "north-swindon",
256 => "sedgefield",
570 => "reading-east",
132 => "east-antrim",
653 => "walsall-north",
220 => "congleton",
223 => "macclesfield",
265 => "doncaster-central",
806 => "perth-and-north-perthshire",
72 => "batley-and-spen",
852 => "st-helens-south",
545 => "oldham-east-and-saddleworth",
541 => "great-yarmouth",
654 => "cannock-chase",
629 => "telford",
640 => "hartlepool",
213 => "rugby-and-kenilworth",
503 => "sittingbourne-and-sheppey",
152 => "south-suffolk",
574 => "north-west-hampshire",
66 => "bradford-west",
83 => "new-forest-east",
85 => "bolton-north-east",
121 => "belfast-west",
131 => "north-antrim",
134 => "west-tyrone",
151 => "west-suffolk",
203 => "faversham-and-mid-kent",
234 => "derby-south",
243 => "lichfield",
264 => "vale-of-york",
290 => "west-worcestershire",
379 => "mole-valley",
436 => "spelthorne",
462 => "loughborough",
530 => "nottingham-north",
572 => "reading-west",
613 => "sunderland-south",
326 => "teignbridge"}

  class << self
    def find_constituency_url_slug(up_my_street_code)
      if up_my_street_code.blank?
        nil
      else
        begin
          CODES[up_my_street_code.to_i]
        rescue
          nil
        end
      end
    end
  end

end