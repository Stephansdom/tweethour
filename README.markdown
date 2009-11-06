tweethour - tweets the hour like a church clock
===============================================

USAGE
-----

    ./tweethour.pl mytwittername mytwitterpassword

or

    ./tweethour.pl mytwittername mytwitterpassword BLING

or

    ./tweethour.sh mytwittername mytwitterpassword

tweethour.pl will DONG like a church clock by default. If you provide the third command line argument "BLING", it will BLING instead of DONG.

There's also a shell script version (tweethour.sh) which has no possibility to change the DONG. This script's source comes without readability.

SETTING UP tweethour FOR YOUR FAVOURITE CHURCH
----------------------------------------------

First, you have to create a twitter account like @lambertikirche, then clone [this git repo](http://github.com/memowe/tweethour) (clone url: git://github.com/memowe/tweethour.git) and create a cron job that fire's tweethour.pl or tweethour.sh for your church's twitter account every hour like this:

    # m h  dom mon dow   command
      0 *  *   *   *     /home/memowe/tweethour/tweethour.sh name password

Done.

If you set up your church, please [let me know][tweetme]!

CHURCHES THAT DONG ON TWITTER
-----------------------------

* [@lambertikirche][1] (St. Lamberti, Münster, Germany)
* [@frauenkirche_dd][2] (Frauenkirche Dresden, Germany)
* [@koelner_dom][3] (Hohe Domkirche St. Peter und Maria, Köln, Germany)

If you set up your church, please [let me know][tweetme]!

PREREQUISITES FOR tweethour.pl
------------------------------

* perl
* Net::Twitter::Lite

PREREQUISITES FOR tweethour.sh
------------------------------

* curl

AUTHOR AND LICENSE
------------------

tweethour was inspired by [@big_ben_clock][bbc]. Thanks!

Copyright (c) 2009 Mirko Westermeier  
([mail@memowe.de](mailto:mail@memowe.de), [@memowe](http://twitter.com/memowe), [mirko.westermeier.de](http://mirko.westermeier.de))

Released under the MIT license, see MIT-LICENSE.

[1]: http://twitter.com/lambertikirche
[2]: http://twitter.com/frauenkirche_dd
[3]: http://twitter.com/koelner_dom

[tweetme]: http://twitter.com/memowe
[bbc]: http://twitter.com/big_ben_clock
