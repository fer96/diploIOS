//
//  DataSource.swift
//  NewYorkTimes
//
//  Created by DelaRosa Fernando on 06/10/18.
//  Copyright © 2018 DeLaRosa Fernando. All rights reserved.
//

import Foundation


struct DataSource {
    let articles = """
{"status":"OK","copyright":"Copyright (c) 2018 The New York Times Company. All Rights Reserved.","response":{"docs":[{"web_url":"https://query.nytimes.com/gst/abstract.html?res=9903E1DE1431E13BBC4851DFBF66838A649FDE","snippet":"AMUSEMENTS THIS EVENING. NIRLO'S.--'Crown Diamonds,' Decros open at 7. BOWRRY.--'Weard of the Ware' and 'Nick of the Woods.' Doors 6 ?? BROADWAY.--'Virglaina' and My Previous Bersey.' Doors open at 7. BROUGHAM'S.--'Gay Mannering' and 'The Yach: Ra...","abstract":"Execution of","print_page":"1","blog":{},"source":"The New York Times","multimedia":[],"headline":{"main":"NEW-YORK CITY.; EXECUTION OF STOOKEY. NATIONAL TEMPERANCE SOCIETY. COMMON COUNCIL FATAL ACCIDENT ON THE HUDSON RIVER RAILROAD. SERIOUS ACCIDENTS. A BLOOMING CARGO. FIRE IN WALL-STREET. FIRE IN THIRTY-NINTH-STREET. FIRE IN GRAND-STREET. FIRE THE PICTORIAL DRAWING ROOM COMPANION. FIREMEN'S VISIT SUICIDE OF A MOTHER, AND MURDER OF HER CHILD. COURT CALENDAR,","kicker":null,"content_kicker":null,"print_headline":null,"name":null,"seo":null,"sub":null},"keywords":[{"name":"persons","value":"ADDISON","rank":0,"major":null},{"name":"persons","value":"STOOKEY AARON","rank":0,"major":null}],"pub_date":"1851-09-20T00:03:58Z","document_type":"article","type_of_material":"Front Page","_id":"4fbfd23f45c1498b0d004f0b","word_count":2185,"score":6.615615},{"web_url":"https://query.nytimes.com/gst/abstract.html?res=9403E1DE1431E13BBC4851DFBF66838A649FDE","snippet":"The great event of the season, the State Fair, is now transpiring in our midst. The most extensive preparations in every way possible have been made during the last few weeks, in anticipation of its occurrence. And the closest scrutinity could har...","abstract":"Address at N.Y. State fair","print_page":"1","blog":{},"source":"The New York Times","multimedia":[],"headline":{"main":"The State Fair at Rochester.","kicker":null,"content_kicker":null,"print_headline":null,"name":null,"seo":null,"sub":null},"keywords":[{"name":"persons","value":"DOUGLAS, STEPHEN ARNOLD","rank":0,"major":null}],"pub_date":"1851-09-20T00:03:58Z","document_type":"article","byline":{"original":"Correspondeence of the New-York Daily Times","person":[{"firstname":null,"middlename":null,"lastname":null,"qualifier":null,"title":null,"role":"reported","organization":"","rank":1}],"organization":null},"type_of_material":"Front Page","_id":"4fbfd23f45c1498b0d004eee","word_count":349,"score":7.247925},{"web_url":"https://query.nytimes.com/gst/abstract.html?res=9507E5DE1331E234BC4A51DFBF66838A649FDE","snippet":"AMUSEMENTS THIS EVENING.  ","print_page":"1","blog":{},"source":"The New York Times","multimedia":[],"headline":{"main":"NEW-YORK CITY.","kicker":"1","content_kicker":null,"print_headline":null,"name":null,"seo":null,"sub":null},"keywords":[],"pub_date":"1851-09-22T00:03:58Z","document_type":"article","type_of_material":"Front Page","_id":"4fbfd23e45c1498b0d004de9","word_count":4014,"score":13.090353},{"web_url":"https://query.nytimes.com/gst/abstract.html?res=9A0DE5DE1331E234BC4A51DFBF66838A649FDE","snippet":"We are now in the thick of the half-yearly railway gatherings, at which the shareholders congregate, in eager anticipation of the good things which directors have to announce for their benefit. Ever since the disclosure of the \"dodges\" by which th...","print_page":"4","blog":{},"source":"The New York Times","multimedia":[],"headline":{"main":"ENGLAND.; Railway Reports--The Queen's Visit to Scotland--Bloomerism abroad--Ascent of Mont Blane--The Yacht America, &c. &c.","kicker":"1","content_kicker":null,"print_headline":null,"name":null,"seo":null,"sub":null},"keywords":[],"pub_date":"1851-09-22T00:03:58Z","document_type":"article","byline":{"original":"Correspondence of The New-York Daily Times","person":[{"firstname":null,"middlename":null,"lastname":null,"qualifier":null,"title":null,"role":"reported","organization":"","rank":1}],"organization":null},"type_of_material":"Article","_id":"4fbfd23e45c1498b0d004df2","word_count":1847,"score":8.904089},{"web_url":"https://query.nytimes.com/gst/abstract.html?res=9C02E5DE1331E234BC4A51DFBF66838A649FDE","snippet":"The Equniox brings with a continuation of the delightful weather which, we have enjoyed for the last fortnight. A few months ago our Sundays used to be regularly disgraced by riots, but new thanks to the efficiency of the Marshal's police, we are ...","print_page":"3","blog":{},"source":"The New York Times","multimedia":[],"headline":{"main":"PHILADELPHIA.; Weather--Odd-Fellows' Parade--Arrival of the President.","kicker":"1","content_kicker":null,"print_headline":null,"name":null,"seo":null,"sub":null},"keywords":[],"pub_date":"1851-09-22T00:03:58Z","document_type":"article","byline":{"original":"Correspondence of the New-York Daily Times","person":[{"firstname":null,"middlename":null,"lastname":null,"qualifier":null,"title":null,"role":"reported","organization":"","rank":1}],"organization":null},"type_of_material":"Article","_id":"4fbfd23e45c1498b0d004ddb","word_count":377,"score":6.870018},{"web_url":"https://query.nytimes.com/gst/abstract.html?res=9A01E5DE1331E234BC4A51DFBF66838A649FDE","snippet":"","print_page":"2","blog":{},"source":"The New York Times","multimedia":[],"headline":{"main":"LATEST INTELLIGENCE; By Telegraph to The New-York Times. Return of President Fillmore--Negro Rioters.","kicker":"1","content_kicker":null,"print_headline":null,"name":null,"seo":null,"sub":null},"keywords":[],"pub_date":"1851-09-22T00:03:58Z","document_type":"article","type_of_material":"Article","_id":"4fbfd23e45c1498b0d004e04","word_count":84,"score":68.65317},{"web_url":"https://query.nytimes.com/gst/abstract.html?res=9F03E5DE1331E234BC4A51DFBF66838A649FDE","snippet":"This is indeed Boston's gala day. At an early hour the sound of the life and drum, the tramp of horses, and the noisy hum of the busy crowd gave notice that the \"people\" were astir, and that the final preparations for the grand procession were bei...","print_page":"2","blog":{},"source":"The New York Times","multimedia":[],"headline":{"main":"The Railroad Jubilee--Closing Day--The Weather.","kicker":"1","content_kicker":null,"print_headline":null,"name":null,"seo":null,"sub":null},"keywords":[],"pub_date":"1851-09-22T00:03:58Z","document_type":"article","byline":{"original":"Correspondence of the New-York Daily Times","person":[{"firstname":null,"middlename":null,"lastname":null,"qualifier":null,"title":null,"role":"reported","organization":"","rank":1}],"organization":null},"type_of_material":"Article","_id":"4fbfd23e45c1498b0d004df8","word_count":2256,"score":8.7528105},{"web_url":"https://query.nytimes.com/gst/abstract.html?res=9503E5DE1331E234BC4A51DFBF66838A649FDE","snippet":"MY DEAR R.:-.While stopping at Boston for a few hours, I comply with your request to throw together some impressions and general views of the Missionary Cause, as exhibited at the recent important meeting in Portland, Maine.  ","print_page":"3","blog":{},"source":"The New York Times","multimedia":[],"headline":{"main":"THE MISSIONARY CAUSE.; Meeting of the American Board at Portland.","kicker":"1","content_kicker":null,"print_headline":null,"name":null,"seo":null,"sub":null},"keywords":[],"pub_date":"1851-09-22T00:03:58Z","document_type":"article","byline":{"original":"Correspondence of The New-York Daily Times","person":[{"firstname":null,"middlename":null,"lastname":null,"qualifier":null,"title":null,"role":"reported","organization":"","rank":1}],"organization":null},"type_of_material":"Article","_id":"4fbfd23e45c1498b0d004ddd","word_count":1784,"score":8.871531},{"web_url":"https://query.nytimes.com/gst/abstract.html?res=9D0DE5DE1331E234BC4A51DFBF66838A649FDE","snippet":"There is scarcely anything of interest to write from this point by the present mail. Business has been remarkably dull for three or four weeks past, mostly attributable to the fact that many nervous persons are afraid that \"Nicaragua is going to b...","print_page":"4","blog":{},"source":"The New York Times","multimedia":[],"headline":{"main":"AFFAIRS AT PANAMA.","kicker":"1","content_kicker":null,"print_headline":null,"name":null,"seo":null,"sub":null},"keywords":[],"pub_date":"1851-09-22T00:03:58Z","document_type":"article","byline":{"original":"Correspondence of The New-York Daily Times","person":[{"firstname":null,"middlename":null,"lastname":null,"qualifier":null,"title":null,"role":"reported","organization":"","rank":1}],"organization":null},"type_of_material":"Article","_id":"4fbfd23e45c1498b0d004dd9","word_count":625,"score":10.473896},{"web_url":"https://query.nytimes.com/gst/abstract.html?res=9803E5DE1331E234BC4A51DFBF66838A649FDE","snippet":"--A body of Norwegians, numbering two hundred, passed through Albany on Friday, on their way Westward. They were a healthy and sturdy set of people, big and little.  ","print_page":"2","blog":{},"source":"The New York Times","multimedia":[],"headline":{"main":"NEWS BY THE MAILS.","kicker":"1","content_kicker":null,"print_headline":null,"name":null,"seo":null,"sub":null},"keywords":[],"pub_date":"1851-09-22T00:03:58Z","document_type":"article","type_of_material":"Article","_id":"4fbfd24245c1498b0d004f6b","word_count":882,"score":9.080686}],"meta":{"hits":4894043,"offset":20,"time":1843}}}
""".data(using: .utf8)!
}