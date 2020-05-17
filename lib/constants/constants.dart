import 'package:flutter/material.dart';

//TODO : UPDATE YOUR API KEY

const api_key = 'YOUR-COINMARKET-API-HERE';
const api_url =
    'https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest';

const TextStyle titleTextStyle =
    TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600);
const TextStyle mediumTextStyle =
    TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500);
const TextStyle smallTextStyle =
    TextStyle(fontSize: 8.0, fontWeight: FontWeight.w400);
// A JSON FILE TO DEBUG IF YOU WOULD LIKE TO
var json = {
  "status": {
    "timestamp": "2020-05-17T09:40:55.475Z",
    "error_code": 0,
    "error_message": null,
    "elapsed": 22,
    "credit_count": 1,
    "notice": null
  },
  "data": [
    {
      "id": 1,
      "name": "Bitcoin",
      "symbol": "BTC",
      "slug": "bitcoin",
      "num_market_pairs": 8241,
      "date_added": "2013-04-28T00:00:00.000Z",
      "tags": ["mineable"],
      "max_supply": 21000000,
      "circulating_supply": 18379275,
      "total_supply": 18379275,
      "platform": null,
      "cmc_rank": 1,
      "last_updated": "2020-05-17T09:39:31.000Z",
      "quote": {
        "USD": {
          "price": 9507.75203883,
          "volume_24h": 35071272358.8323,
          "percent_change_1h": 0.0112493,
          "percent_change_24h": 1.03633,
          "percent_change_7d": 8.88211,
          "market_cap": 174745589353.46725,
          "last_updated": "2020-05-17T09:39:31.000Z"
        }
      }
    },
    {
      "id": 1027,
      "name": "Ethereum",
      "symbol": "ETH",
      "slug": "ethereum",
      "num_market_pairs": 5185,
      "date_added": "2015-08-07T00:00:00.000Z",
      "tags": ["mineable"],
      "max_supply": null,
      "circulating_supply": 110962656.4365,
      "total_supply": 110962656.4365,
      "platform": null,
      "cmc_rank": 2,
      "last_updated": "2020-05-17T09:39:23.000Z",
      "quote": {
        "USD": {
          "price": 202.248357617,
          "volume_24h": 14361762436.1977,
          "percent_change_1h": 0.202746,
          "percent_change_24h": 0.97948,
          "percent_change_7d": 6.74582,
          "market_cap": 22442015021.10156,
          "last_updated": "2020-05-17T09:39:23.000Z"
        }
      }
    },
    {
      "id": 52,
      "name": "XRP",
      "symbol": "XRP",
      "slug": "xrp",
      "num_market_pairs": 559,
      "date_added": "2013-08-04T00:00:00.000Z",
      "tags": [],
      "max_supply": 100000000000,
      "circulating_supply": 44112853111,
      "total_supply": 99990976125,
      "platform": null,
      "cmc_rank": 3,
      "last_updated": "2020-05-17T09:40:04.000Z",
      "quote": {
        "USD": {
          "price": 0.202083175828,
          "volume_24h": 1709852186.16367,
          "percent_change_1h": -0.0142262,
          "percent_change_24h": 0.951432,
          "percent_change_7d": 1.975,
          "market_cap": 8914465451.50495,
          "last_updated": "2020-05-17T09:40:04.000Z"
        }
      }
    },
    {
      "id": 825,
      "name": "Tether",
      "symbol": "USDT",
      "slug": "tether",
      "num_market_pairs": 5003,
      "date_added": "2015-02-25T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 8798069379.47,
      "total_supply": 9079177441.54,
      "platform": {
        "id": 1027,
        "name": "Ethereum",
        "symbol": "ETH",
        "slug": "ethereum",
        "token_address": "31"
      },
      "cmc_rank": 4,
      "last_updated": "2020-05-17T09:39:21.000Z",
      "quote": {
        "USD": {
          "price": 1.00259222013,
          "volume_24h": 40188833711.8706,
          "percent_change_1h": 0.00634397,
          "percent_change_24h": 0.0957302,
          "percent_change_7d": 0.195213,
          "market_cap": 8820875912.020597,
          "last_updated": "2020-05-17T09:39:21.000Z"
        }
      }
    },
    {
      "id": 1831,
      "name": "Bitcoin Cash",
      "symbol": "BCH",
      "slug": "bitcoin-cash",
      "num_market_pairs": 489,
      "date_added": "2017-07-23T00:00:00.000Z",
      "tags": ["mineable"],
      "max_supply": 21000000,
      "circulating_supply": 18409412.5,
      "total_supply": 18409412.5,
      "platform": null,
      "cmc_rank": 5,
      "last_updated": "2020-05-17T09:40:06.000Z",
      "quote": {
        "USD": {
          "price": 238.822517406,
          "volume_24h": 2742956980.33528,
          "percent_change_1h": 0.189959,
          "percent_change_24h": 0.524214,
          "percent_change_7d": 1.41255,
          "market_cap": 4396582237.215484,
          "last_updated": "2020-05-17T09:40:06.000Z"
        }
      }
    },
    {
      "id": 3602,
      "name": "Bitcoin SV",
      "symbol": "BSV",
      "slug": "bitcoin-sv",
      "num_market_pairs": 191,
      "date_added": "2018-11-09T00:00:00.000Z",
      "tags": ["mineable"],
      "max_supply": 21000000,
      "circulating_supply": 18408133.3319233,
      "total_supply": 18408133.3319233,
      "platform": null,
      "cmc_rank": 6,
      "last_updated": "2020-05-17T09:40:10.000Z",
      "quote": {
        "USD": {
          "price": 190.476715395,
          "volume_24h": 1392470594.10831,
          "percent_change_1h": 0.233516,
          "percent_change_24h": 0.789007,
          "percent_change_7d": 0.486914,
          "market_cap": 3506320773.6179676,
          "last_updated": "2020-05-17T09:40:10.000Z"
        }
      }
    },
    {
      "id": 2,
      "name": "Litecoin",
      "symbol": "LTC",
      "slug": "litecoin",
      "num_market_pairs": 605,
      "date_added": "2013-04-28T00:00:00.000Z",
      "tags": ["mineable"],
      "max_supply": 84000000,
      "circulating_supply": 64748580.7265572,
      "total_supply": 64748580.7265572,
      "platform": null,
      "cmc_rank": 7,
      "last_updated": "2020-05-17T09:40:04.000Z",
      "quote": {
        "USD": {
          "price": 44.1087466173,
          "volume_24h": 3796409618.57686,
          "percent_change_1h": 0.345408,
          "percent_change_24h": 1.81661,
          "percent_change_7d": 4.1131,
          "market_cap": 2855978741.097506,
          "last_updated": "2020-05-17T09:40:04.000Z"
        }
      }
    },
    {
      "id": 1839,
      "name": "Binance Coin",
      "symbol": "BNB",
      "slug": "binance-coin",
      "num_market_pairs": 312,
      "date_added": "2017-07-25T00:00:00.000Z",
      "tags": [],
      "max_supply": 187536713,
      "circulating_supply": 155536713,
      "total_supply": 187536713,
      "platform": null,
      "cmc_rank": 8,
      "last_updated": "2020-05-17T09:40:05.000Z",
      "quote": {
        "USD": {
          "price": 16.2730518385,
          "volume_24h": 327606344.762569,
          "percent_change_1h": 0.0755159,
          "percent_change_24h": 0.937248,
          "percent_change_7d": 6.32248,
          "market_cap": 2531056993.4388967,
          "last_updated": "2020-05-17T09:40:05.000Z"
        }
      }
    },
    {
      "id": 1765,
      "name": "EOS",
      "symbol": "EOS",
      "slug": "eos",
      "num_market_pairs": 383,
      "date_added": "2017-07-01T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 922696404.0824,
      "total_supply": 1019396415.2651,
      "platform": null,
      "cmc_rank": 9,
      "last_updated": "2020-05-17T09:40:05.000Z",
      "quote": {
        "USD": {
          "price": 2.62964814376,
          "volume_24h": 2819736747.61326,
          "percent_change_1h": 0.224169,
          "percent_change_24h": -0.508508,
          "percent_change_7d": 6.83589,
          "market_cap": 2426366886.24931,
          "last_updated": "2020-05-17T09:40:05.000Z"
        }
      }
    },
    {
      "id": 2011,
      "name": "Tezos",
      "symbol": "XTZ",
      "slug": "tezos",
      "num_market_pairs": 105,
      "date_added": "2017-10-06T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 710744653.691645,
      "total_supply": 710744653.691645,
      "platform": null,
      "cmc_rank": 10,
      "last_updated": "2020-05-17T09:40:04.000Z",
      "quote": {
        "USD": {
          "price": 2.6738937905,
          "volume_24h": 123669034.412319,
          "percent_change_1h": 0.453404,
          "percent_change_24h": 5.3746,
          "percent_change_7d": 2.3932,
          "market_cap": 1900455716.1371627,
          "last_updated": "2020-05-17T09:40:04.000Z"
        }
      }
    },
    {
      "id": 512,
      "name": "Stellar",
      "symbol": "XLM",
      "slug": "stellar",
      "num_market_pairs": 306,
      "date_added": "2014-08-05T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 20208212445.9556,
      "total_supply": 50001803854.8717,
      "platform": null,
      "cmc_rank": 11,
      "last_updated": "2020-05-17T09:40:04.000Z",
      "quote": {
        "USD": {
          "price": 0.0696873229948,
          "volume_24h": 484704081.872929,
          "percent_change_1h": 0.177056,
          "percent_change_24h": 2.66427,
          "percent_change_7d": 7.78518,
          "market_cap": 1408256227.8688452,
          "last_updated": "2020-05-17T09:40:04.000Z"
        }
      }
    },
    {
      "id": 1975,
      "name": "Chainlink",
      "symbol": "LINK",
      "slug": "chainlink",
      "num_market_pairs": 185,
      "date_added": "2017-09-20T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 350000000,
      "total_supply": 1000000000,
      "platform": {
        "id": 1027,
        "name": "Ethereum",
        "symbol": "ETH",
        "slug": "ethereum",
        "token_address": "0x514910771af9ca656af840dff83e8264ecf986ca"
      },
      "cmc_rank": 12,
      "last_updated": "2020-05-17T09:40:04.000Z",
      "quote": {
        "USD": {
          "price": 3.81256229622,
          "volume_24h": 315452042.109691,
          "percent_change_1h": 0.272465,
          "percent_change_24h": 2.98485,
          "percent_change_7d": 1.55892,
          "market_cap": 1334396803.677,
          "last_updated": "2020-05-17T09:40:04.000Z"
        }
      }
    },
    {
      "id": 2010,
      "name": "Cardano",
      "symbol": "ADA",
      "slug": "cardano",
      "num_market_pairs": 138,
      "date_added": "2017-10-01T00:00:00.000Z",
      "tags": ["mineable"],
      "max_supply": 45000000000,
      "circulating_supply": 25927070538,
      "total_supply": 31112483745,
      "platform": null,
      "cmc_rank": 13,
      "last_updated": "2020-05-17T09:40:04.000Z",
      "quote": {
        "USD": {
          "price": 0.0513245024582,
          "volume_24h": 117133626.187569,
          "percent_change_1h": 0.304971,
          "percent_change_24h": 1.17382,
          "percent_change_7d": 8.14243,
          "market_cap": 1330693995.5615058,
          "last_updated": "2020-05-17T09:40:04.000Z"
        }
      }
    },
    {
      "id": 328,
      "name": "Monero",
      "symbol": "XMR",
      "slug": "monero",
      "num_market_pairs": 152,
      "date_added": "2014-05-21T00:00:00.000Z",
      "tags": ["mineable"],
      "max_supply": null,
      "circulating_supply": 17563224.7830534,
      "total_supply": 17563224.7830534,
      "platform": null,
      "cmc_rank": 14,
      "last_updated": "2020-05-17T09:40:03.000Z",
      "quote": {
        "USD": {
          "price": 65.3065169079,
          "volume_24h": 79192294.4774809,
          "percent_change_1h": 0.295398,
          "percent_change_24h": 1.86182,
          "percent_change_7d": 12.7846,
          "market_cap": 1146993036.2517254,
          "last_updated": "2020-05-17T09:40:03.000Z"
        }
      }
    },
    {
      "id": 3635,
      "name": "Crypto.com Coin",
      "symbol": "CRO",
      "slug": "crypto-com-coin",
      "num_market_pairs": 42,
      "date_added": "2018-12-14T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 16603196347.032,
      "total_supply": 100000000000,
      "platform": {
        "id": 1027,
        "name": "Ethereum",
        "symbol": "ETH",
        "slug": "ethereum",
        "token_address": "0xa0b73e1ff0b80914ab6fe0444e65848c4c34450b"
      },
      "cmc_rank": 15,
      "last_updated": "2020-05-17T09:40:10.000Z",
      "quote": {
        "USD": {
          "price": 0.0671125024586,
          "volume_24h": 9644660.68636751,
          "percent_change_1h": -0.21533,
          "percent_change_24h": 2.56903,
          "percent_change_7d": 6.92733,
          "market_cap": 1114282055.6608036,
          "last_updated": "2020-05-17T09:40:10.000Z"
        }
      }
    },
    {
      "id": 3957,
      "name": "UNUS SED LEO",
      "symbol": "LEO",
      "slug": "unus-sed-leo",
      "num_market_pairs": 25,
      "date_added": "2019-05-21T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 999498892.9,
      "total_supply": 999498892.9,
      "platform": {
        "id": 1027,
        "name": "Ethereum",
        "symbol": "ETH",
        "slug": "ethereum",
        "token_address": "0x2af5d2ad76741191d15dfe7bf6ac92d4bd912ca3"
      },
      "cmc_rank": 16,
      "last_updated": "2020-05-17T09:40:11.000Z",
      "quote": {
        "USD": {
          "price": 1.10907814102,
          "volume_24h": 24140279.9782166,
          "percent_change_1h": 0.220875,
          "percent_change_24h": 2.34078,
          "percent_change_7d": 2.0528,
          "market_cap": 1108522374.0890799,
          "last_updated": "2020-05-17T09:40:11.000Z"
        }
      }
    },
    {
      "id": 1958,
      "name": "TRON",
      "symbol": "TRX",
      "slug": "tron",
      "num_market_pairs": 349,
      "date_added": "2017-09-13T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 66682072191.4,
      "total_supply": 99281283754.3,
      "platform": null,
      "cmc_rank": 17,
      "last_updated": "2020-05-17T09:40:06.000Z",
      "quote": {
        "USD": {
          "price": 0.0149789866105,
          "volume_24h": 1456052813.41882,
          "percent_change_1h": -0.0293927,
          "percent_change_24h": 0.042788,
          "percent_change_7d": 4.37997,
          "market_cap": 998829866.515375,
          "last_updated": "2020-05-17T09:40:06.000Z"
        }
      }
    },
    {
      "id": 2502,
      "name": "Huobi Token",
      "symbol": "HT",
      "slug": "huobi-token",
      "num_market_pairs": 138,
      "date_added": "2018-02-03T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 222668092.971921,
      "total_supply": 500000000,
      "platform": {
        "id": 1027,
        "name": "Ethereum",
        "symbol": "ETH",
        "slug": "ethereum",
        "token_address": "0x6f259637dcd74c767781e37bc6133cd6a68aa161"
      },
      "cmc_rank": 18,
      "last_updated": "2020-05-17T09:40:06.000Z",
      "quote": {
        "USD": {
          "price": 4.07408264411,
          "volume_24h": 128847584.350336,
          "percent_change_1h": 0.178202,
          "percent_change_24h": 0.528362,
          "percent_change_7d": 5.67345,
          "market_cap": 907168212.9739752,
          "last_updated": "2020-05-17T09:40:06.000Z"
        }
      }
    },
    {
      "id": 1321,
      "name": "Ethereum Classic",
      "symbol": "ETC",
      "slug": "ethereum-classic",
      "num_market_pairs": 253,
      "date_added": "2016-07-24T00:00:00.000Z",
      "tags": ["mineable"],
      "max_supply": 210700000,
      "circulating_supply": 116313299,
      "total_supply": 116313299,
      "platform": null,
      "cmc_rank": 19,
      "last_updated": "2020-05-17T09:40:03.000Z",
      "quote": {
        "USD": {
          "price": 6.68598056709,
          "volume_24h": 1621148044.19609,
          "percent_change_1h": 0.309813,
          "percent_change_24h": -0.865294,
          "percent_change_7d": 7.11884,
          "market_cap": 777668456.8081287,
          "last_updated": "2020-05-17T09:40:03.000Z"
        }
      }
    },
    {
      "id": 1376,
      "name": "Neo",
      "symbol": "NEO",
      "slug": "neo",
      "num_market_pairs": 247,
      "date_added": "2016-09-08T00:00:00.000Z",
      "tags": [],
      "max_supply": 100000000,
      "circulating_supply": 70538831,
      "total_supply": 100000000,
      "platform": null,
      "cmc_rank": 20,
      "last_updated": "2020-05-17T09:40:04.000Z",
      "quote": {
        "USD": {
          "price": 10.3100431254,
          "volume_24h": 497660040.116488,
          "percent_change_1h": -0.167858,
          "percent_change_24h": 2.80475,
          "percent_change_7d": 1.65545,
          "market_cap": 727258389.6253024,
          "last_updated": "2020-05-17T09:40:04.000Z"
        }
      }
    },
    {
      "id": 131,
      "name": "Dash",
      "symbol": "DASH",
      "slug": "dash",
      "num_market_pairs": 294,
      "date_added": "2014-02-14T00:00:00.000Z",
      "tags": ["mineable"],
      "max_supply": 18900000,
      "circulating_supply": 9496823.31697341,
      "total_supply": 9496823.31697341,
      "platform": null,
      "cmc_rank": 21,
      "last_updated": "2020-05-17T09:40:04.000Z",
      "quote": {
        "USD": {
          "price": 75.8021406043,
          "volume_24h": 577105319.05572,
          "percent_change_1h": 0.0892964,
          "percent_change_24h": 2.85761,
          "percent_change_7d": 4.21438,
          "market_cap": 719879536.3674133,
          "last_updated": "2020-05-17T09:40:04.000Z"
        }
      }
    },
    {
      "id": 3408,
      "name": "USD Coin",
      "symbol": "USDC",
      "slug": "usd-coin",
      "num_market_pairs": 231,
      "date_added": "2018-10-08T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 706239389.997448,
      "total_supply": 712941957.27,
      "platform": {
        "id": 1027,
        "name": "Ethereum",
        "symbol": "ETH",
        "slug": "ethereum",
        "token_address": "0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48"
      },
      "cmc_rank": 22,
      "last_updated": "2020-05-17T09:40:10.000Z",
      "quote": {
        "USD": {
          "price": 1.00225328084,
          "volume_24h": 585867023.177768,
          "percent_change_1h": 0.0489894,
          "percent_change_24h": 0.113999,
          "percent_change_7d": 0.18283,
          "market_cap": 707830745.6833825,
          "last_updated": "2020-05-17T09:40:10.000Z"
        }
      }
    },
    {
      "id": 3662,
      "name": "HedgeTrade",
      "symbol": "HEDG",
      "slug": "hedgetrade",
      "num_market_pairs": 14,
      "date_added": "2019-01-03T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 288208798.11353,
      "total_supply": 1000000000.05,
      "platform": {
        "id": 1027,
        "name": "Ethereum",
        "symbol": "ETH",
        "slug": "ethereum",
        "token_address": "0xF1290473E210b2108A85237fbCd7b6eb42Cc654F"
      },
      "cmc_rank": 23,
      "last_updated": "2020-05-17T09:40:10.000Z",
      "quote": {
        "USD": {
          "price": 2.32709148502,
          "volume_24h": 568680.199679858,
          "percent_change_1h": -0.211204,
          "percent_change_24h": -0.0701386,
          "percent_change_7d": 9.26664,
          "market_cap": 670688239.9978439,
          "last_updated": "2020-05-17T09:40:10.000Z"
        }
      }
    },
    {
      "id": 1720,
      "name": "IOTA",
      "symbol": "MIOTA",
      "slug": "iota",
      "num_market_pairs": 53,
      "date_added": "2017-06-13T00:00:00.000Z",
      "tags": [],
      "max_supply": 2779530283,
      "circulating_supply": 2779530283,
      "total_supply": 2779530283,
      "platform": null,
      "cmc_rank": 24,
      "last_updated": "2020-05-17T09:40:03.000Z",
      "quote": {
        "USD": {
          "price": 0.201905486377,
          "volume_24h": 12515697.2402987,
          "percent_change_1h": -0.22642,
          "percent_change_24h": 0.521549,
          "percent_change_7d": 13.0752,
          "market_cap": 561202413.6887155,
          "last_updated": "2020-05-17T09:40:03.000Z"
        }
      }
    },
    {
      "id": 3794,
      "name": "Cosmos",
      "symbol": "ATOM",
      "slug": "cosmos",
      "num_market_pairs": 133,
      "date_added": "2019-03-14T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 190688439.2,
      "total_supply": 237928230.821588,
      "platform": null,
      "cmc_rank": 25,
      "last_updated": "2020-05-17T09:40:11.000Z",
      "quote": {
        "USD": {
          "price": 2.57065959621,
          "volume_24h": 141057431.791685,
          "percent_change_1h": -0.114771,
          "percent_change_24h": 2.47455,
          "percent_change_7d": 1.33476,
          "market_cap": 490195066.1157871,
          "last_updated": "2020-05-17T09:40:11.000Z"
        }
      }
    },
    {
      "id": 1437,
      "name": "Zcash",
      "symbol": "ZEC",
      "slug": "zcash",
      "num_market_pairs": 238,
      "date_added": "2016-10-29T00:00:00.000Z",
      "tags": ["mineable"],
      "max_supply": 21000000,
      "circulating_supply": 9173462.5,
      "total_supply": 9173462.5,
      "platform": null,
      "cmc_rank": 26,
      "last_updated": "2020-05-17T09:40:04.000Z",
      "quote": {
        "USD": {
          "price": 45.3683501951,
          "volume_24h": 368314117.356328,
          "percent_change_1h": 0.0201628,
          "percent_change_24h": 6.6846,
          "percent_change_7d": 8.78419,
          "market_cap": 416184859.20161754,
          "last_updated": "2020-05-17T09:40:04.000Z"
        }
      }
    },
    {
      "id": 873,
      "name": "NEM",
      "symbol": "XEM",
      "slug": "nem",
      "num_market_pairs": 92,
      "date_added": "2015-04-01T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 8999999999,
      "total_supply": 8999999999,
      "platform": null,
      "cmc_rank": 27,
      "last_updated": "2020-05-17T09:40:02.000Z",
      "quote": {
        "USD": {
          "price": 0.0389578453453,
          "volume_24h": 21046061.3214122,
          "percent_change_1h": -0.543969,
          "percent_change_24h": -0.312612,
          "percent_change_7d": 1.08349,
          "market_cap": 350620608.06874216,
          "last_updated": "2020-05-17T09:40:02.000Z"
        }
      }
    },
    {
      "id": 1518,
      "name": "Maker",
      "symbol": "MKR",
      "slug": "maker",
      "num_market_pairs": 62,
      "date_added": "2017-01-29T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 1005576.75172367,
      "total_supply": 1005576.75172367,
      "platform": {
        "id": 1027,
        "name": "Ethereum",
        "symbol": "ETH",
        "slug": "ethereum",
        "token_address": "0x9f8f72aa9304c8b593d555f12ef6589cc3a579a2"
      },
      "cmc_rank": 28,
      "last_updated": "2020-05-17T09:40:03.000Z",
      "quote": {
        "USD": {
          "price": 335.013275659,
          "volume_24h": 5555056.66842694,
          "percent_change_1h": 0.285591,
          "percent_change_24h": 1.24827,
          "percent_change_7d": 4.74221,
          "market_cap": 336881561.52148366,
          "last_updated": "2020-05-17T09:40:03.000Z"
        }
      }
    },
    {
      "id": 74,
      "name": "Dogecoin",
      "symbol": "DOGE",
      "slug": "dogecoin",
      "num_market_pairs": 237,
      "date_added": "2013-12-15T00:00:00.000Z",
      "tags": ["mineable"],
      "max_supply": null,
      "circulating_supply": 124599108802.706,
      "total_supply": 124599108802.706,
      "platform": null,
      "cmc_rank": 29,
      "last_updated": "2020-05-17T09:40:03.000Z",
      "quote": {
        "USD": {
          "price": 0.00252489117804,
          "volume_24h": 250648657.926405,
          "percent_change_1h": 0.0589205,
          "percent_change_24h": 0.544207,
          "percent_change_7d": 2.59819,
          "market_cap": 314599190.6075985,
          "last_updated": "2020-05-17T09:40:03.000Z"
        }
      }
    },
    {
      "id": 3897,
      "name": "OKB",
      "symbol": "OKB",
      "slug": "okb",
      "num_market_pairs": 51,
      "date_added": "2019-04-30T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 60000000,
      "total_supply": 300000000,
      "platform": {
        "id": 1027,
        "name": "Ethereum",
        "symbol": "ETH",
        "slug": "ethereum",
        "token_address": "0x75231f58b43240c9718dd58b4967c5114342a86c"
      },
      "cmc_rank": 30,
      "last_updated": "2020-05-17T09:40:11.000Z",
      "quote": {
        "USD": {
          "price": 5.20608284635,
          "volume_24h": 121133539.822725,
          "percent_change_1h": 0.025973,
          "percent_change_24h": 0.142432,
          "percent_change_7d": 6.2338,
          "market_cap": 312364970.781,
          "last_updated": "2020-05-17T09:40:11.000Z"
        }
      }
    },
    {
      "id": 2566,
      "name": "Ontology",
      "symbol": "ONT",
      "slug": "ontology",
      "num_market_pairs": 125,
      "date_added": "2018-03-08T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 656746573,
      "total_supply": 1000000000,
      "platform": null,
      "cmc_rank": 31,
      "last_updated": "2020-05-17T09:40:06.000Z",
      "quote": {
        "USD": {
          "price": 0.474574161105,
          "volume_24h": 85774707.3045802,
          "percent_change_1h": 0.0657924,
          "percent_change_24h": 1.03831,
          "percent_change_7d": 4.38195,
          "market_cap": 311674953.94005865,
          "last_updated": "2020-05-17T09:40:06.000Z"
        }
      }
    },
    {
      "id": 1697,
      "name": "Basic Attention Token",
      "symbol": "BAT",
      "slug": "basic-attention-token",
      "num_market_pairs": 188,
      "date_added": "2017-06-01T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 1457527137.0863,
      "total_supply": 1500000000,
      "platform": {
        "id": 1027,
        "name": "Ethereum",
        "symbol": "ETH",
        "slug": "ethereum",
        "token_address": "0x0d8775f648430679a709e98d2b0cb6250d2887ef"
      },
      "cmc_rank": 32,
      "last_updated": "2020-05-17T09:40:04.000Z",
      "quote": {
        "USD": {
          "price": 0.209332214481,
          "volume_24h": 87061449.0781589,
          "percent_change_1h": 1.63005,
          "percent_change_24h": 1.63853,
          "percent_change_7d": 4.70996,
          "market_cap": 305107383.2724272,
          "last_updated": "2020-05-17T09:40:04.000Z"
        }
      }
    },
    {
      "id": 4195,
      "name": "FTX Token",
      "symbol": "FTT",
      "slug": "ftx-token",
      "num_market_pairs": 24,
      "date_added": "2019-07-31T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 95268782.0940323,
      "total_supply": 346141118.16126,
      "platform": {
        "id": 1027,
        "name": "Ethereum",
        "symbol": "ETH",
        "slug": "ethereum",
        "token_address": "0x50d1c9771902476076ecfc8b2a83ad6b9355a4c9"
      },
      "cmc_rank": 33,
      "last_updated": "2020-05-17T09:40:11.000Z",
      "quote": {
        "USD": {
          "price": 2.95581099064,
          "volume_24h": 1983459.40016872,
          "percent_change_1h": 0.0732742,
          "percent_change_24h": 0.795531,
          "percent_change_7d": 7.00268,
          "market_cap": 281596513.1784279,
          "last_updated": "2020-05-17T09:40:11.000Z"
        }
      }
    },
    {
      "id": 109,
      "name": "DigiByte",
      "symbol": "DGB",
      "slug": "digibyte",
      "num_market_pairs": 76,
      "date_added": "2014-02-06T00:00:00.000Z",
      "tags": ["mineable"],
      "max_supply": 21000000000,
      "circulating_supply": 13145602431.1965,
      "total_supply": 13145602431.1965,
      "platform": null,
      "cmc_rank": 34,
      "last_updated": "2020-05-17T09:40:01.000Z",
      "quote": {
        "USD": {
          "price": 0.0208505138223,
          "volume_24h": 20853861.6597552,
          "percent_change_1h": -0.316829,
          "percent_change_24h": -2.54043,
          "percent_change_7d": 3.56508,
          "market_cap": 274092565.19412315,
          "last_updated": "2020-05-17T09:40:01.000Z"
        }
      }
    },
    {
      "id": 1896,
      "name": "0x",
      "symbol": "ZRX",
      "slug": "0x",
      "num_market_pairs": 180,
      "date_added": "2017-08-16T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 652985066.903398,
      "total_supply": 1000000000,
      "platform": {
        "id": 1027,
        "name": "Ethereum",
        "symbol": "ETH",
        "slug": "ethereum",
        "token_address": "0xe41d2489571d322189246dafa5ebde1f4699f498"
      },
      "cmc_rank": 35,
      "last_updated": "2020-05-17T09:40:04.000Z",
      "quote": {
        "USD": {
          "price": 0.387287201522,
          "volume_24h": 80399074.6983944,
          "percent_change_1h": -0.413999,
          "percent_change_24h": -3.01853,
          "percent_change_7d": -6.83957,
          "market_cap": 252892759.19667298,
          "last_updated": "2020-05-17T09:40:04.000Z"
        }
      }
    },
    {
      "id": 3077,
      "name": "VeChain",
      "symbol": "VET",
      "slug": "vechain",
      "num_market_pairs": 101,
      "date_added": "2017-08-22T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 55454734800,
      "total_supply": 86712634466,
      "platform": null,
      "cmc_rank": 36,
      "last_updated": "2020-05-17T09:40:08.000Z",
      "quote": {
        "USD": {
          "price": 0.00450799063173,
          "volume_24h": 171031963.122322,
          "percent_change_1h": 0.0688263,
          "percent_change_24h": 1.95875,
          "percent_change_7d": 8.43964,
          "market_cap": 249989424.9634716,
          "last_updated": "2020-05-17T09:40:08.000Z"
        }
      }
    },
    {
      "id": 3330,
      "name": "Paxos Standard",
      "symbol": "PAX",
      "slug": "paxos-standard",
      "num_market_pairs": 102,
      "date_added": "2018-09-27T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 244951954.494264,
      "total_supply": 249952064.83,
      "platform": {
        "id": 1027,
        "name": "Ethereum",
        "symbol": "ETH",
        "slug": "ethereum",
        "token_address": "0x8e870d67f660d95d5be530380d0ec0bd388289e1"
      },
      "cmc_rank": 37,
      "last_updated": "2020-05-17T09:40:09.000Z",
      "quote": {
        "USD": {
          "price": 1.00174497384,
          "volume_24h": 341228894.46627,
          "percent_change_1h": 0.0375713,
          "percent_change_24h": 0.0412804,
          "percent_change_7d": 0.271675,
          "market_cap": 245379389.24691334,
          "last_updated": "2020-05-17T09:40:09.000Z"
        }
      }
    },
    {
      "id": 3695,
      "name": "Hyperion",
      "symbol": "HYN",
      "slug": "hyperion",
      "num_market_pairs": 10,
      "date_added": "2019-01-14T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 316765917.406,
      "total_supply": 10000000000,
      "platform": {
        "id": 1027,
        "name": "Ethereum",
        "symbol": "ETH",
        "slug": "ethereum",
        "token_address": "0xe99a894a69d7c2e3c92e61b64c505a6a57d2bc07"
      },
      "cmc_rank": 38,
      "last_updated": "2020-05-17T09:40:11.000Z",
      "quote": {
        "USD": {
          "price": 0.583542343466,
          "volume_24h": 25764011.9011967,
          "percent_change_1h": 1.96024,
          "percent_change_24h": -5.02549,
          "percent_change_7d": 19.6147,
          "market_cap": 184846325.77325463,
          "last_updated": "2020-05-17T09:40:11.000Z"
        }
      }
    },
    {
      "id": 4687,
      "name": "Binance USD",
      "symbol": "BUSD",
      "slug": "binance-usd",
      "num_market_pairs": 64,
      "date_added": "2019-09-20T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 178041177.65,
      "total_supply": 178041177.65,
      "platform": {
        "id": 1027,
        "name": "Ethereum",
        "symbol": "ETH",
        "slug": "ethereum",
        "token_address": "0x4Fabb145d64652a948d72533023f6E7A623C7C53"
      },
      "cmc_rank": 39,
      "last_updated": "2020-05-17T09:40:12.000Z",
      "quote": {
        "USD": {
          "price": 1.00233311866,
          "volume_24h": 82214755.8714361,
          "percent_change_1h": 0.0175661,
          "percent_change_24h": 0.075575,
          "percent_change_7d": 0.144772,
          "market_cap": 178456568.84382358,
          "last_updated": "2020-05-17T09:40:12.000Z"
        }
      }
    },
    {
      "id": 2416,
      "name": "THETA",
      "symbol": "THETA",
      "slug": "theta",
      "num_market_pairs": 30,
      "date_added": "2018-01-17T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 870502690,
      "total_supply": 1000000000,
      "platform": null,
      "cmc_rank": 40,
      "last_updated": "2020-05-17T09:40:05.000Z",
      "quote": {
        "USD": {
          "price": 0.190729880625,
          "volume_24h": 10556428.6333445,
          "percent_change_1h": -1.22571,
          "percent_change_24h": 1.19206,
          "percent_change_7d": 31.0537,
          "market_cap": 166030874.14744136,
          "last_updated": "2020-05-17T09:40:05.000Z"
        }
      }
    },
    {
      "id": 1168,
      "name": "Decred",
      "symbol": "DCR",
      "slug": "decred",
      "num_market_pairs": 52,
      "date_added": "2016-02-10T00:00:00.000Z",
      "tags": ["mineable"],
      "max_supply": 21000000,
      "circulating_supply": 11499633.7324412,
      "total_supply": 11499633.7324412,
      "platform": null,
      "cmc_rank": 41,
      "last_updated": "2020-05-17T09:40:02.000Z",
      "quote": {
        "USD": {
          "price": 13.8852814614,
          "volume_24h": 112048942.509771,
          "percent_change_1h": 0.082386,
          "percent_change_24h": 3.70756,
          "percent_change_7d": 3.14145,
          "market_cap": 159675651.07795587,
          "last_updated": "2020-05-17T09:40:02.000Z"
        }
      }
    },
    {
      "id": 2083,
      "name": "Bitcoin Gold",
      "symbol": "BTG",
      "slug": "bitcoin-gold",
      "num_market_pairs": 76,
      "date_added": "2017-10-23T00:00:00.000Z",
      "tags": ["mineable"],
      "max_supply": 21000000,
      "circulating_supply": 17513923.589,
      "total_supply": 17513923.589,
      "platform": null,
      "cmc_rank": 42,
      "last_updated": "2020-05-17T09:40:04.000Z",
      "quote": {
        "USD": {
          "price": 9.05682806916,
          "volume_24h": 42546174.6299769,
          "percent_change_1h": -0.131909,
          "percent_change_24h": -0.0929041,
          "percent_change_7d": 2.6511,
          "market_cap": 158620594.76197866,
          "last_updated": "2020-05-17T09:40:04.000Z"
        }
      }
    },
    {
      "id": 2586,
      "name": "Synthetix Network Token",
      "symbol": "SNX",
      "slug": "synthetix-network-token",
      "num_market_pairs": 19,
      "date_added": "2018-03-14T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 181454897.973105,
      "total_supply": 182701142.321275,
      "platform": {
        "id": 1027,
        "name": "Ethereum",
        "symbol": "ETH",
        "slug": "ethereum",
        "token_address": "0xc011a72400e58ecd99ee497cf89e3775d4bd732f"
      },
      "cmc_rank": 43,
      "last_updated": "2020-05-17T09:40:06.000Z",
      "quote": {
        "USD": {
          "price": 0.853635570082,
          "volume_24h": 1536996.88722135,
          "percent_change_1h": 0.193903,
          "percent_change_24h": 1.36257,
          "percent_change_7d": 1.33099,
          "market_cap": 154896355.27544263,
          "last_updated": "2020-05-17T09:40:06.000Z"
        }
      }
    },
    {
      "id": 1684,
      "name": "Qtum",
      "symbol": "QTUM",
      "slug": "qtum",
      "num_market_pairs": 174,
      "date_added": "2017-05-24T00:00:00.000Z",
      "tags": [],
      "max_supply": 107822406,
      "circulating_supply": 96701391.6577188,
      "total_supply": 102420812,
      "platform": null,
      "cmc_rank": 44,
      "last_updated": "2020-05-17T09:40:04.000Z",
      "quote": {
        "USD": {
          "price": 1.54662139614,
          "volume_24h": 298577858.199484,
          "percent_change_1h": -0.192783,
          "percent_change_24h": 1.31692,
          "percent_change_7d": 5.74312,
          "market_cap": 149560441.374342,
          "last_updated": "2020-05-17T09:40:04.000Z"
        }
      }
    },
    {
      "id": 4642,
      "name": "Hedera Hashgraph",
      "symbol": "HBAR",
      "slug": "hedera-hashgraph",
      "num_market_pairs": 25,
      "date_added": "2019-09-17T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 4137989568,
      "total_supply": 50000000000,
      "platform": null,
      "cmc_rank": 45,
      "last_updated": "2020-05-17T09:40:12.000Z",
      "quote": {
        "USD": {
          "price": 0.0359229348829,
          "volume_24h": 5826048.3913421,
          "percent_change_1h": 0.00195086,
          "percent_change_24h": -1.78703,
          "percent_change_7d": 4.16189,
          "market_cap": 148648729.7973835,
          "last_updated": "2020-05-17T09:40:12.000Z"
        }
      }
    },
    {
      "id": 2099,
      "name": "ICON",
      "symbol": "ICX",
      "slug": "icon",
      "num_market_pairs": 64,
      "date_added": "2017-10-27T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 543599002.845642,
      "total_supply": 800460000,
      "platform": null,
      "cmc_rank": 46,
      "last_updated": "2020-05-17T09:40:04.000Z",
      "quote": {
        "USD": {
          "price": 0.272954222831,
          "volume_24h": 34382220.6667519,
          "percent_change_1h": 0.167467,
          "percent_change_24h": 0.309166,
          "percent_change_7d": 3.58668,
          "market_cap": 148377643.35343876,
          "last_updated": "2020-05-17T09:40:04.000Z"
        }
      }
    },
    {
      "id": 4030,
      "name": "Algorand",
      "symbol": "ALGO",
      "slug": "algorand",
      "num_market_pairs": 83,
      "date_added": "2019-06-20T00:00:00.000Z",
      "tags": ["mineable"],
      "max_supply": null,
      "circulating_supply": 711158345.477462,
      "total_supply": 3242430188.47746,
      "platform": null,
      "cmc_rank": 47,
      "last_updated": "2020-05-17T09:40:11.000Z",
      "quote": {
        "USD": {
          "price": 0.20283585357,
          "volume_24h": 29319394.6162703,
          "percent_change_1h": 0.908377,
          "percent_change_24h": 3.29364,
          "percent_change_7d": 5.76223,
          "market_cap": 144248410.02834997,
          "last_updated": "2020-05-17T09:40:11.000Z"
        }
      }
    },
    {
      "id": 1104,
      "name": "Augur",
      "symbol": "REP",
      "slug": "augur",
      "num_market_pairs": 70,
      "date_added": "2015-10-27T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 11000000,
      "total_supply": 11000000,
      "platform": {
        "id": 1027,
        "name": "Ethereum",
        "symbol": "ETH",
        "slug": "ethereum",
        "token_address": "0x1985365e9f78359a9b6ad760e32412f4a445e862"
      },
      "cmc_rank": 48,
      "last_updated": "2020-05-17T09:40:02.000Z",
      "quote": {
        "USD": {
          "price": 12.8289943714,
          "volume_24h": 87201152.8190004,
          "percent_change_1h": 0.482251,
          "percent_change_24h": 0.58249,
          "percent_change_7d": 9.43972,
          "market_cap": 141118938.08540002,
          "last_updated": "2020-05-17T09:40:02.000Z"
        }
      }
    },
    {
      "id": 2563,
      "name": "TrueUSD",
      "symbol": "TUSD",
      "slug": "trueusd",
      "num_market_pairs": 157,
      "date_added": "2018-03-06T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 137381003.68,
      "total_supply": 137381003.68,
      "platform": {
        "id": 1027,
        "name": "Ethereum",
        "symbol": "ETH",
        "slug": "ethereum",
        "token_address": "0x0000000000085d4780B73119b644AE5ecd22b376"
      },
      "cmc_rank": 49,
      "last_updated": "2020-05-17T09:40:06.000Z",
      "quote": {
        "USD": {
          "price": 1.00002471098,
          "volume_24h": 136374337.427138,
          "percent_change_1h": 0.0725127,
          "percent_change_24h": 0.164926,
          "percent_change_7d": 0.0644403,
          "market_cap": 137384398.49923432,
          "last_updated": "2020-05-17T09:40:06.000Z"
        }
      }
    },
    {
      "id": 1214,
      "name": "Lisk",
      "symbol": "LSK",
      "slug": "lisk",
      "num_market_pairs": 58,
      "date_added": "2016-04-06T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 123644064.145642,
      "total_supply": 139698676,
      "platform": null,
      "cmc_rank": 50,
      "last_updated": "2020-05-17T09:40:02.000Z",
      "quote": {
        "USD": {
          "price": 1.11008852713,
          "volume_24h": 2990152.38794793,
          "percent_change_1h": 0.102227,
          "percent_change_24h": -0.869731,
          "percent_change_7d": 3.24172,
          "market_cap": 137255857.05580297,
          "last_updated": "2020-05-17T09:40:02.000Z"
        }
      }
    },
    {
      "id": 4779,
      "name": "HUSD",
      "symbol": "HUSD",
      "slug": "husd",
      "num_market_pairs": 27,
      "date_added": "2019-10-15T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 133606068.482077,
      "total_supply": 133606068.482077,
      "platform": {
        "id": 1027,
        "name": "Ethereum",
        "symbol": "ETH",
        "slug": "ethereum",
        "token_address": "0xdf574c24545e5ffecb9a659c229253d4111d87e1"
      },
      "cmc_rank": 51,
      "last_updated": "2020-05-17T09:40:14.000Z",
      "quote": {
        "USD": {
          "price": 1.00221054389,
          "volume_24h": 10507906.1516332,
          "percent_change_1h": 0.0137788,
          "percent_change_24h": 0.095324,
          "percent_change_7d": 0.201265,
          "market_cap": 133901410.56042698,
          "last_updated": "2020-05-17T09:40:14.000Z"
        }
      }
    },
    {
      "id": 2130,
      "name": "Enjin Coin",
      "symbol": "ENJ",
      "slug": "enjin-coin",
      "num_market_pairs": 65,
      "date_added": "2017-11-01T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 819772129.064264,
      "total_supply": 1000000000,
      "platform": {
        "id": 1027,
        "name": "Ethereum",
        "symbol": "ETH",
        "slug": "ethereum",
        "token_address": "0xf629cbd94d3791c9250152bd8dfbdf380e2a3b9c"
      },
      "cmc_rank": 52,
      "last_updated": "2020-05-17T09:40:04.000Z",
      "quote": {
        "USD": {
          "price": 0.162146384296,
          "volume_24h": 13597626.4956215,
          "percent_change_1h": 0.518281,
          "percent_change_24h": -3.77489,
          "percent_change_7d": 18.124,
          "market_cap": 132923086.67440428,
          "last_updated": "2020-05-17T09:40:04.000Z"
        }
      }
    },
    {
      "id": 1808,
      "name": "OmiseGO",
      "symbol": "OMG",
      "slug": "omisego",
      "num_market_pairs": 208,
      "date_added": "2017-07-14T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 140245398.245133,
      "total_supply": 140245398.245133,
      "platform": {
        "id": 1027,
        "name": "Ethereum",
        "symbol": "ETH",
        "slug": "ethereum",
        "token_address": "0xd26114cd6EE289AccF82350c8d8487fedB8A0C07"
      },
      "cmc_rank": 53,
      "last_updated": "2020-05-17T09:40:04.000Z",
      "quote": {
        "USD": {
          "price": 0.92922159039,
          "volume_24h": 91981749.6041176,
          "percent_change_1h": 0.0586505,
          "percent_change_24h": -0.716021,
          "percent_change_7d": 37.1776,
          "market_cap": 130319052.0022214,
          "last_updated": "2020-05-17T09:40:04.000Z"
        }
      }
    },
    {
      "id": 2577,
      "name": "Ravencoin",
      "symbol": "RVN",
      "slug": "ravencoin",
      "num_market_pairs": 57,
      "date_added": "2018-03-10T00:00:00.000Z",
      "tags": ["mineable"],
      "max_supply": 21000000000,
      "circulating_supply": 6177395000,
      "total_supply": 6177395000,
      "platform": null,
      "cmc_rank": 54,
      "last_updated": "2020-05-17T09:40:06.000Z",
      "quote": {
        "USD": {
          "price": 0.0191767222473,
          "volume_24h": 21090469.3932391,
          "percent_change_1h": -0.370508,
          "percent_change_24h": 0.920188,
          "percent_change_7d": 0.495048,
          "market_cap": 118462188.12685978,
          "last_updated": "2020-05-17T09:40:06.000Z"
        }
      }
    },
    {
      "id": 1982,
      "name": "Kyber Network",
      "symbol": "KNC",
      "slug": "kyber-network",
      "num_market_pairs": 63,
      "date_added": "2017-09-24T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 180028288.926415,
      "total_supply": 210861130.645279,
      "platform": {
        "id": 1027,
        "name": "Ethereum",
        "symbol": "ETH",
        "slug": "ethereum",
        "token_address": "0xdd974d5c2e2928dea5f71b9825b8b646686bd200"
      },
      "cmc_rank": 55,
      "last_updated": "2020-05-17T09:40:04.000Z",
      "quote": {
        "USD": {
          "price": 0.625215829942,
          "volume_24h": 47991945.6661925,
          "percent_change_1h": 0.192316,
          "percent_change_24h": -1.47151,
          "percent_change_7d": 2.76446,
          "market_cap": 112556536.07416672,
          "last_updated": "2020-05-17T09:40:04.000Z"
        }
      }
    },
    {
      "id": 4943,
      "name": "Multi-collateral DAI",
      "symbol": "DAI",
      "slug": "multi-collateral-dai",
      "num_market_pairs": 87,
      "date_added": "2019-11-22T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 109802406.654643,
      "total_supply": 110087541.866788,
      "platform": {
        "id": 1027,
        "name": "Ethereum",
        "symbol": "ETH",
        "slug": "ethereum",
        "token_address": "0x6b175474e89094c44da98b954eedeac495271d0f"
      },
      "cmc_rank": 56,
      "last_updated": "2020-05-17T09:40:13.000Z",
      "quote": {
        "USD": {
          "price": 1.00689162993,
          "volume_24h": 6543544.01613198,
          "percent_change_1h": 0.0670012,
          "percent_change_24h": 0.490487,
          "percent_change_7d": 0.27774,
          "market_cap": 110559124.20673016,
          "last_updated": "2020-05-17T09:40:13.000Z"
        }
      }
    },
    {
      "id": 2469,
      "name": "Zilliqa",
      "symbol": "ZIL",
      "slug": "zilliqa",
      "num_market_pairs": 111,
      "date_added": "2018-01-25T00:00:00.000Z",
      "tags": ["mineable"],
      "max_supply": 21000000000,
      "circulating_supply": 10133986966.6339,
      "total_supply": 13425454119.6339,
      "platform": null,
      "cmc_rank": 57,
      "last_updated": "2020-05-17T09:40:06.000Z",
      "quote": {
        "USD": {
          "price": 0.0108159655104,
          "volume_24h": 34563763.2214804,
          "percent_change_1h": 1.84099,
          "percent_change_24h": 5.10232,
          "percent_change_7d": 67.0837,
          "market_cap": 109608853.51395538,
          "last_updated": "2020-05-17T09:40:06.000Z"
        }
      }
    },
    {
      "id": 1274,
      "name": "Waves",
      "symbol": "WAVES",
      "slug": "waves",
      "num_market_pairs": 132,
      "date_added": "2016-06-02T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 101952574,
      "total_supply": 101952574,
      "platform": null,
      "cmc_rank": 58,
      "last_updated": "2020-05-17T09:40:03.000Z",
      "quote": {
        "USD": {
          "price": 1.06092994561,
          "volume_24h": 35173682.9782318,
          "percent_change_1h": 1.20775,
          "percent_change_24h": 2.65762,
          "percent_change_7d": 10.2751,
          "market_cap": 108164538.7886195,
          "last_updated": "2020-05-17T09:40:03.000Z"
        }
      }
    },
    {
      "id": 3351,
      "name": "ZB Token",
      "symbol": "ZB",
      "slug": "zb-token",
      "num_market_pairs": 11,
      "date_added": "2018-09-27T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 463288810,
      "total_supply": 2100000000,
      "platform": {
        "id": 1027,
        "name": "Ethereum",
        "symbol": "ETH",
        "slug": "ethereum",
        "token_address": "0xbd0793332e9fb844a52a205a233ef27a5b34b927"
      },
      "cmc_rank": 59,
      "last_updated": "2020-05-17T09:40:09.000Z",
      "quote": {
        "USD": {
          "price": 0.222941746813,
          "volume_24h": 121267351.104675,
          "percent_change_1h": 0.182101,
          "percent_change_24h": 0.850891,
          "percent_change_7d": -1.12674,
          "market_cap": 103286416.58031607,
          "last_updated": "2020-05-17T09:40:09.000Z"
        }
      }
    },
    {
      "id": 2222,
      "name": "Bitcoin Diamond",
      "symbol": "BCD",
      "slug": "bitcoin-diamond",
      "num_market_pairs": 29,
      "date_added": "2017-11-24T00:00:00.000Z",
      "tags": ["mineable"],
      "max_supply": 210000000,
      "circulating_supply": 186492897.953,
      "total_supply": 189492897.953,
      "platform": null,
      "cmc_rank": 60,
      "last_updated": "2020-05-17T09:40:04.000Z",
      "quote": {
        "USD": {
          "price": 0.549624180547,
          "volume_24h": 9091834.33661054,
          "percent_change_1h": -0.401058,
          "percent_change_24h": 0.269773,
          "percent_change_7d": 3.40809,
          "market_cap": 102501006.21525292,
          "last_updated": "2020-05-17T09:40:04.000Z"
        }
      }
    },
    {
      "id": 1759,
      "name": "Status",
      "symbol": "SNT",
      "slug": "status",
      "num_market_pairs": 86,
      "date_added": "2017-06-28T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 3470483788,
      "total_supply": 6804870174,
      "platform": {
        "id": 1027,
        "name": "Ethereum",
        "symbol": "ETH",
        "slug": "ethereum",
        "token_address": "0x744d70fdbe2ba4cf95131626614a1763df805b9e"
      },
      "cmc_rank": 61,
      "last_updated": "2020-05-17T09:40:04.000Z",
      "quote": {
        "USD": {
          "price": 0.0285947610247,
          "volume_24h": 25388050.458498,
          "percent_change_1h": -0.229874,
          "percent_change_24h": 1.80788,
          "percent_change_7d": 3.38205,
          "market_cap": 99237654.55795561,
          "last_updated": "2020-05-17T09:40:04.000Z"
        }
      }
    },
    {
      "id": 1567,
      "name": "Nano",
      "symbol": "NANO",
      "slug": "nano",
      "num_market_pairs": 51,
      "date_added": "2017-03-06T00:00:00.000Z",
      "tags": [],
      "max_supply": 133248297.197,
      "circulating_supply": 133248297.197,
      "total_supply": 133248297.197,
      "platform": null,
      "cmc_rank": 62,
      "last_updated": "2020-05-17T09:40:02.000Z",
      "quote": {
        "USD": {
          "price": 0.743358502094,
          "volume_24h": 5887046.26879981,
          "percent_change_1h": -0.339341,
          "percent_change_24h": -2.42387,
          "percent_change_7d": 21.4851,
          "market_cap": 99051254.61093806,
          "last_updated": "2020-05-17T09:40:02.000Z"
        }
      }
    },
    {
      "id": 2137,
      "name": "Electroneum",
      "symbol": "ETN",
      "slug": "electroneum",
      "num_market_pairs": 23,
      "date_added": "2017-11-02T00:00:00.000Z",
      "tags": ["mineable"],
      "max_supply": 21000000000,
      "circulating_supply": 10101318088.49,
      "total_supply": 10101318088.49,
      "platform": null,
      "cmc_rank": 63,
      "last_updated": "2020-05-17T09:40:04.000Z",
      "quote": {
        "USD": {
          "price": 0.00937316283434,
          "volume_24h": 4500727.3865935,
          "percent_change_1h": -1.92224,
          "percent_change_24h": -10.1638,
          "percent_change_7d": 176.007,
          "market_cap": 94681299.28488085,
          "last_updated": "2020-05-17T09:40:04.000Z"
        }
      }
    },
    {
      "id": 213,
      "name": "MonaCoin",
      "symbol": "MONA",
      "slug": "monacoin",
      "num_market_pairs": 13,
      "date_added": "2014-03-20T00:00:00.000Z",
      "tags": ["mineable"],
      "max_supply": null,
      "circulating_supply": 65729674.8711679,
      "total_supply": 65729674.8711679,
      "platform": null,
      "cmc_rank": 64,
      "last_updated": "2020-05-17T09:40:01.000Z",
      "quote": {
        "USD": {
          "price": 1.42426286884,
          "volume_24h": 2963334.76455925,
          "percent_change_1h": 0.281931,
          "percent_change_24h": 2.41501,
          "percent_change_7d": 10.2565,
          "market_cap": 93616335.29993005,
          "last_updated": "2020-05-17T09:40:01.000Z"
        }
      }
    },
    {
      "id": 3812,
      "name": "Flexacoin",
      "symbol": "FXC",
      "slug": "flexacoin",
      "num_market_pairs": 14,
      "date_added": "2019-03-22T00:00:00.000Z",
      "tags": [],
      "max_supply": 100000000000,
      "circulating_supply": 27647916667,
      "total_supply": 27647916667,
      "platform": {
        "id": 1027,
        "name": "Ethereum",
        "symbol": "ETH",
        "slug": "ethereum",
        "token_address": "0x4a57e687b9126435a9b19e4a802113e266adebde"
      },
      "cmc_rank": 65,
      "last_updated": "2020-05-17T09:40:10.000Z",
      "quote": {
        "USD": {
          "price": 0.00323824588707,
          "volume_24h": 72546.4044368701,
          "percent_change_1h": 0.787911,
          "percent_change_24h": -0.59809,
          "percent_change_7d": 1.45846,
          "market_cap": 89530752.43296686,
          "last_updated": "2020-05-17T09:40:10.000Z"
        }
      }
    },
    {
      "id": 5370,
      "name": "Hive",
      "symbol": "HIVE",
      "slug": "hive-blockchain",
      "num_market_pairs": 16,
      "date_added": "2020-03-26T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 288987046.18,
      "total_supply": 372357252.052,
      "platform": null,
      "cmc_rank": 66,
      "last_updated": "2020-05-17T09:40:13.000Z",
      "quote": {
        "USD": {
          "price": 0.308251058781,
          "volume_24h": 2938376.9310991,
          "percent_change_1h": -0.0713993,
          "percent_change_24h": -1.50656,
          "percent_change_7d": -4.67018,
          "market_cap": 89080562.95897874,
          "last_updated": "2020-05-17T09:40:13.000Z"
        }
      }
    },
    {
      "id": 2682,
      "name": "Holo",
      "symbol": "HOT",
      "slug": "holo",
      "num_market_pairs": 75,
      "date_added": "2018-04-29T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 164091905583.237,
      "total_supply": 177619433541.141,
      "platform": {
        "id": 1027,
        "name": "Ethereum",
        "symbol": "ETH",
        "slug": "ethereum",
        "token_address": "0x6c6ee5e31d828de241282b9606c8e98ea48526e2"
      },
      "cmc_rank": 67,
      "last_updated": "2020-05-17T09:40:07.000Z",
      "quote": {
        "USD": {
          "price": 0.000539183064175,
          "volume_24h": 7139424.83981261,
          "percent_change_1h": 0.351845,
          "percent_change_24h": -0.420328,
          "percent_change_7d": 12.8296,
          "market_cap": 88475576.45868452,
          "last_updated": "2020-05-17T09:40:07.000Z"
        }
      }
    },
    {
      "id": 1776,
      "name": "MCO",
      "symbol": "MCO",
      "slug": "crypto-com",
      "num_market_pairs": 63,
      "date_added": "2017-07-03T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 15793831.0949625,
      "total_supply": 31587682.3632061,
      "platform": {
        "id": 1027,
        "name": "Ethereum",
        "symbol": "ETH",
        "slug": "ethereum",
        "token_address": "0xb63b606ac810a52cca15e44bb630fd42d8d1d83d"
      },
      "cmc_rank": 68,
      "last_updated": "2020-05-17T09:40:03.000Z",
      "quote": {
        "USD": {
          "price": 5.58123738396,
          "volume_24h": 47813192.9716074,
          "percent_change_1h": -0.148817,
          "percent_change_24h": 1.10697,
          "percent_change_7d": 6.98677,
          "market_cap": 88149120.5431546,
          "last_updated": "2020-05-17T09:40:03.000Z"
        }
      }
    },
    {
      "id": 3139,
      "name": "DxChain Token",
      "symbol": "DX",
      "slug": "dxchain-token",
      "num_market_pairs": 7,
      "date_added": "2018-08-10T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 49999999999.6862,
      "total_supply": 100000000000,
      "platform": {
        "id": 1027,
        "name": "Ethereum",
        "symbol": "ETH",
        "slug": "ethereum",
        "token_address": "0x973e52691176d36453868D9d86572788d27041A9"
      },
      "cmc_rank": 69,
      "last_updated": "2020-05-17T09:40:07.000Z",
      "quote": {
        "USD": {
          "price": 0.00174713328698,
          "volume_24h": 1049571.53577565,
          "percent_change_1h": 0.109997,
          "percent_change_24h": 0.776047,
          "percent_change_7d": 3.57147,
          "market_cap": 87356664.34845175,
          "last_updated": "2020-05-17T09:40:07.000Z"
        }
      }
    },
    {
      "id": 1042,
      "name": "Siacoin",
      "symbol": "SC",
      "slug": "siacoin",
      "num_market_pairs": 39,
      "date_added": "2015-08-26T00:00:00.000Z",
      "tags": ["mineable"],
      "max_supply": null,
      "circulating_supply": 41817047634,
      "total_supply": 41817047634,
      "platform": null,
      "cmc_rank": 70,
      "last_updated": "2020-05-17T09:40:02.000Z",
      "quote": {
        "USD": {
          "price": 0.00205933013243,
          "volume_24h": 663446.680288354,
          "percent_change_1h": -0.0675856,
          "percent_change_24h": 0.947502,
          "percent_change_7d": 4.80559,
          "market_cap": 86115106.24195683,
          "last_updated": "2020-05-17T09:40:02.000Z"
        }
      }
    },
    {
      "id": 2239,
      "name": "Aave",
      "symbol": "LEND",
      "slug": "aave",
      "num_market_pairs": 21,
      "date_added": "2017-11-30T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 1299999941.70317,
      "total_supply": 1299999941.70317,
      "platform": {
        "id": 1027,
        "name": "Ethereum",
        "symbol": "ETH",
        "slug": "ethereum",
        "token_address": "0x80fb784b7ed66730e8b1dbd9820afd29931aab03"
      },
      "cmc_rank": 71,
      "last_updated": "2020-05-17T09:40:04.000Z",
      "quote": {
        "USD": {
          "price": 0.0631550580887,
          "volume_24h": 1020681.70548919,
          "percent_change_1h": -0.250342,
          "percent_change_24h": 0.587107,
          "percent_change_7d": 8.8417,
          "market_cap": 82101571.83357033,
          "last_updated": "2020-05-17T09:40:04.000Z"
        }
      }
    },
    {
      "id": 3437,
      "name": "ABBC Coin",
      "symbol": "ABBC",
      "slug": "abbc-coin",
      "num_market_pairs": 42,
      "date_added": "2018-10-12T00:00:00.000Z",
      "tags": ["mineable"],
      "max_supply": null,
      "circulating_supply": 555416924.350722,
      "total_supply": 1003278750.0109,
      "platform": null,
      "cmc_rank": 72,
      "last_updated": "2020-05-17T09:40:11.000Z",
      "quote": {
        "USD": {
          "price": 0.14484342507,
          "volume_24h": 39009603.7413993,
          "percent_change_1h": -1.48095,
          "percent_change_24h": 15.6662,
          "percent_change_7d": -21.8233,
          "market_cap": 80448489.66480365,
          "last_updated": "2020-05-17T09:40:11.000Z"
        }
      }
    },
    {
      "id": 2830,
      "name": "Seele-N",
      "symbol": "SEELE",
      "slug": "seele",
      "num_market_pairs": 18,
      "date_added": "2018-05-31T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 699592066.289478,
      "total_supply": 1000000000,
      "platform": {
        "id": 1027,
        "name": "Ethereum",
        "symbol": "ETH",
        "slug": "ethereum",
        "token_address": "0xb1eef147028e9f480dbc5ccaa3277d417d1b85f0"
      },
      "cmc_rank": 73,
      "last_updated": "2020-05-17T09:40:06.000Z",
      "quote": {
        "USD": {
          "price": 0.107945920269,
          "volume_24h": 20292344.5304634,
          "percent_change_1h": 0.470118,
          "percent_change_24h": 11.4285,
          "percent_change_7d": 46.1202,
          "market_cap": 75518109.40850896,
          "last_updated": "2020-05-17T09:40:06.000Z"
        }
      }
    },
    {
      "id": 2087,
      "name": "KuCoin Shares",
      "symbol": "KCS",
      "slug": "kucoin-shares",
      "num_market_pairs": 15,
      "date_added": "2017-10-24T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 81250284,
      "total_supply": 171250284,
      "platform": {
        "id": 1027,
        "name": "Ethereum",
        "symbol": "ETH",
        "slug": "ethereum",
        "token_address": "0x039b5649a59967e3e936d7471f9c3700100ee1ab"
      },
      "cmc_rank": 74,
      "last_updated": "2020-05-17T09:40:03.000Z",
      "quote": {
        "USD": {
          "price": 0.928716280834,
          "volume_24h": 7915319.55142148,
          "percent_change_1h": -0.22387,
          "percent_change_24h": 1.11665,
          "percent_change_7d": 5.5914,
          "market_cap": 75458461.57318626,
          "last_updated": "2020-05-17T09:40:03.000Z"
        }
      }
    },
    {
      "id": 3218,
      "name": "Energi",
      "symbol": "NRG",
      "slug": "energi",
      "num_market_pairs": 14,
      "date_added": "2018-08-23T00:00:00.000Z",
      "tags": ["mineable"],
      "max_supply": null,
      "circulating_supply": 28969068.472672,
      "total_supply": 28969068.472672,
      "platform": null,
      "cmc_rank": 75,
      "last_updated": "2020-05-17T09:40:08.000Z",
      "quote": {
        "USD": {
          "price": 2.60244807761,
          "volume_24h": 1572848.04368246,
          "percent_change_1h": -3.04942,
          "percent_change_24h": -9.09466,
          "percent_change_7d": -12.5028,
          "market_cap": 75390496.5568577,
          "last_updated": "2020-05-17T09:40:08.000Z"
        }
      }
    },
    {
      "id": 4948,
      "name": "Nervos Network",
      "symbol": "CKB",
      "slug": "nervos-network",
      "num_market_pairs": 23,
      "date_added": "2019-11-19T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 17289311638.9996,
      "total_supply": 27442119961.2169,
      "platform": null,
      "cmc_rank": 76,
      "last_updated": "2020-05-17T09:40:13.000Z",
      "quote": {
        "USD": {
          "price": 0.0041300524361,
          "volume_24h": 13450375.0110307,
          "percent_change_1h": 1.55533,
          "percent_change_24h": 3.97355,
          "percent_change_7d": 3.08878,
          "market_cap": 71405763.65314238,
          "last_updated": "2020-05-17T09:40:13.000Z"
        }
      }
    },
    {
      "id": 3890,
      "name": "Matic Network",
      "symbol": "MATIC",
      "slug": "matic-network",
      "num_market_pairs": 53,
      "date_added": "2019-04-28T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 3433504398,
      "total_supply": 10000000000,
      "platform": {
        "id": 1027,
        "name": "Ethereum",
        "symbol": "ETH",
        "slug": "ethereum",
        "token_address": "0x7D1AfA7B718fb893dB30A3aBc0Cfc608AaCfeBB0"
      },
      "cmc_rank": 77,
      "last_updated": "2020-05-17T09:40:11.000Z",
      "quote": {
        "USD": {
          "price": 0.0206267071773,
          "volume_24h": 41439066.0682499,
          "percent_change_1h": 1.43759,
          "percent_change_24h": 7.32377,
          "percent_change_7d": 34.9092,
          "market_cap": 70821889.80951771,
          "last_updated": "2020-05-17T09:40:11.000Z"
        }
      }
    },
    {
      "id": 2539,
      "name": "Ren",
      "symbol": "REN",
      "slug": "ren",
      "num_market_pairs": 18,
      "date_added": "2018-02-21T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 852453284.124669,
      "total_supply": 999999632.80375,
      "platform": {
        "id": 1027,
        "name": "Ethereum",
        "symbol": "ETH",
        "slug": "ethereum",
        "token_address": "0x408e41876cccdc0f92210600ef50372656052a38"
      },
      "cmc_rank": 78,
      "last_updated": "2020-05-17T09:40:06.000Z",
      "quote": {
        "USD": {
          "price": 0.0820648831756,
          "volume_24h": 3903123.39722918,
          "percent_change_1h": 0.356364,
          "percent_change_24h": -0.261047,
          "percent_change_7d": 15.061,
          "market_cap": 69956479.1743475,
          "last_updated": "2020-05-17T09:40:06.000Z"
        }
      }
    },
    {
      "id": 2758,
      "name": "Unibright",
      "symbol": "UBT",
      "slug": "unibright",
      "num_market_pairs": 13,
      "date_added": "2018-05-21T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 148594999.243493,
      "total_supply": 150000000,
      "platform": {
        "id": 1027,
        "name": "Ethereum",
        "symbol": "ETH",
        "slug": "ethereum",
        "token_address": "0x8400d94a5cb0fa0d041a3788e395285d61c9ee5e"
      },
      "cmc_rank": 79,
      "last_updated": "2020-05-17T09:40:06.000Z",
      "quote": {
        "USD": {
          "price": 0.455934908795,
          "volume_24h": 7164116.56110024,
          "percent_change_1h": 2.99582,
          "percent_change_24h": 16.6913,
          "percent_change_7d": 86.6275,
          "market_cap": 67749647.42747506,
          "last_updated": "2020-05-17T09:40:06.000Z"
        }
      }
    },
    {
      "id": 1732,
      "name": "Numeraire",
      "symbol": "NMR",
      "slug": "numeraire",
      "num_market_pairs": 10,
      "date_added": "2017-06-23T00:00:00.000Z",
      "tags": [],
      "max_supply": 11000000,
      "circulating_supply": 2428890.84218286,
      "total_supply": 10987470.162081,
      "platform": {
        "id": 1027,
        "name": "Ethereum",
        "symbol": "ETH",
        "slug": "ethereum",
        "token_address": "0x1776e1f26f98b1a5df9cd347953a26dd3cb46671"
      },
      "cmc_rank": 80,
      "last_updated": "2020-05-17T09:40:02.000Z",
      "quote": {
        "USD": {
          "price": 27.0437724674,
          "volume_24h": 1174160.60572673,
          "percent_change_1h": 0.218011,
          "percent_change_24h": 3.65637,
          "percent_change_7d": -11.2792,
          "market_cap": 65686371.28414482,
          "last_updated": "2020-05-17T09:40:02.000Z"
        }
      }
    },
    {
      "id": 3155,
      "name": "Quant",
      "symbol": "QNT",
      "slug": "quant",
      "num_market_pairs": 18,
      "date_added": "2018-08-10T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 12072738,
      "total_supply": 14612493.0808262,
      "platform": {
        "id": 1027,
        "name": "Ethereum",
        "symbol": "ETH",
        "slug": "ethereum",
        "token_address": "0x4a220e6096b25eadb88358cb44068a3248254675"
      },
      "cmc_rank": 81,
      "last_updated": "2020-05-17T09:40:08.000Z",
      "quote": {
        "USD": {
          "price": 5.40502048787,
          "volume_24h": 8798802.36562167,
          "percent_change_1h": 0.158824,
          "percent_change_24h": 20.3524,
          "percent_change_7d": 23.8972,
          "market_cap": 65253396.23468669,
          "last_updated": "2020-05-17T09:40:08.000Z"
        }
      }
    },
    {
      "id": 1230,
      "name": "Steem",
      "symbol": "STEEM",
      "slug": "steem",
      "num_market_pairs": 32,
      "date_added": "2016-04-18T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 371901687.064,
      "total_supply": 388875781.064,
      "platform": null,
      "cmc_rank": 82,
      "last_updated": "2020-05-17T09:40:02.000Z",
      "quote": {
        "USD": {
          "price": 0.174810698534,
          "volume_24h": 1969669.53283196,
          "percent_change_1h": -0.0645011,
          "percent_change_24h": -0.299434,
          "percent_change_7d": 4.08895,
          "market_cap": 65012393.70163091,
          "last_updated": "2020-05-17T09:40:02.000Z"
        }
      }
    },
    {
      "id": 1521,
      "name": "Komodo",
      "symbol": "KMD",
      "slug": "komodo",
      "num_market_pairs": 29,
      "date_added": "2017-02-05T00:00:00.000Z",
      "tags": ["mineable"],
      "max_supply": 200000000,
      "circulating_supply": 119841644.91774,
      "total_supply": 119841644.91774,
      "platform": null,
      "cmc_rank": 83,
      "last_updated": "2020-05-17T09:40:02.000Z",
      "quote": {
        "USD": {
          "price": 0.537587684946,
          "volume_24h": 2768998.27138902,
          "percent_change_1h": 0.468103,
          "percent_change_24h": -0.171619,
          "percent_change_7d": 3.46298,
          "market_cap": 64425392.45144841,
          "last_updated": "2020-05-17T09:40:02.000Z"
        }
      }
    },
    {
      "id": 1866,
      "name": "Bytom",
      "symbol": "BTM",
      "slug": "bytom",
      "num_market_pairs": 55,
      "date_added": "2017-08-08T00:00:00.000Z",
      "tags": ["mineable"],
      "max_supply": null,
      "circulating_supply": 1002499275,
      "total_supply": 1407000000,
      "platform": null,
      "cmc_rank": 84,
      "last_updated": "2020-05-17T09:40:03.000Z",
      "quote": {
        "USD": {
          "price": 0.0632305316636,
          "volume_24h": 13846013.2682579,
          "percent_change_1h": -0.17379,
          "percent_change_24h": 0.465142,
          "percent_change_7d": 2.98887,
          "market_cap": 63388562.150623545,
          "last_updated": "2020-05-17T09:40:03.000Z"
        }
      }
    },
    {
      "id": 2694,
      "name": "Nexo",
      "symbol": "NEXO",
      "slug": "nexo",
      "num_market_pairs": 26,
      "date_added": "2018-05-01T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 560000011,
      "total_supply": 1000000000,
      "platform": {
        "id": 1027,
        "name": "Ethereum",
        "symbol": "ETH",
        "slug": "ethereum",
        "token_address": "0xb62132e35a6c13ee1ee0f84dc5d40bad8d815206"
      },
      "cmc_rank": 85,
      "last_updated": "2020-05-17T09:40:06.000Z",
      "quote": {
        "USD": {
          "price": 0.10982907923,
          "volume_24h": 37039019.6375573,
          "percent_change_1h": 0.114863,
          "percent_change_24h": -2.13028,
          "percent_change_7d": 13.0143,
          "market_cap": 61504285.57691987,
          "last_updated": "2020-05-17T09:40:06.000Z"
        }
      }
    },
    {
      "id": 3718,
      "name": "BitTorrent",
      "symbol": "BTT",
      "slug": "bittorrent",
      "num_market_pairs": 137,
      "date_added": "2019-01-31T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 212116500000,
      "total_supply": 990000000000,
      "platform": {
        "id": 1958,
        "name": "TRON",
        "symbol": "TRX",
        "slug": "tron",
        "token_address": "1002000"
      },
      "cmc_rank": 86,
      "last_updated": "2020-05-17T09:40:11.000Z",
      "quote": {
        "USD": {
          "price": 0.000271410494802,
          "volume_24h": 65410479.4015681,
          "percent_change_1h": 0.0341218,
          "percent_change_24h": -0.069055,
          "percent_change_7d": 4.86657,
          "market_cap": 57570644.220668435,
          "last_updated": "2020-05-17T09:40:11.000Z"
        }
      }
    },
    {
      "id": 693,
      "name": "Verge",
      "symbol": "XVG",
      "slug": "verge",
      "num_market_pairs": 49,
      "date_added": "2014-10-25T00:00:00.000Z",
      "tags": ["mineable"],
      "max_supply": 16555000000,
      "circulating_supply": 16269154743.3634,
      "total_supply": 16269154743.3634,
      "platform": null,
      "cmc_rank": 87,
      "last_updated": "2020-05-17T09:40:02.000Z",
      "quote": {
        "USD": {
          "price": 0.00351138507464,
          "volume_24h": 1163623.92210346,
          "percent_change_1h": 0.63038,
          "percent_change_24h": 5.55879,
          "percent_change_7d": 9.17125,
          "market_cap": 57127267.1428548,
          "last_updated": "2020-05-17T09:40:02.000Z"
        }
      }
    },
    {
      "id": 4281,
      "name": "BHEX Token",
      "symbol": "BHT",
      "slug": "bhex-token",
      "num_market_pairs": 8,
      "date_added": "2019-08-25T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 284347544.111632,
      "total_supply": 1446399044.11163,
      "platform": {
        "id": 1027,
        "name": "Ethereum",
        "symbol": "ETH",
        "slug": "ethereum",
        "token_address": "0xfc29b6e626b67776675fff55d5bc0452d042f434"
      },
      "cmc_rank": 88,
      "last_updated": "2020-05-17T09:40:11.000Z",
      "quote": {
        "USD": {
          "price": 0.197651743367,
          "volume_24h": 2191616.95223176,
          "percent_change_1h": -0.156837,
          "percent_change_24h": -3.87258,
          "percent_change_7d": 38.0071,
          "market_cap": 56201787.815789,
          "last_updated": "2020-05-17T09:40:11.000Z"
        }
      }
    },
    {
      "id": 118,
      "name": "ReddCoin",
      "symbol": "RDD",
      "slug": "reddcoin",
      "num_market_pairs": 11,
      "date_added": "2014-02-10T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 28808713173.7887,
      "total_supply": 28808713173.7887,
      "platform": null,
      "cmc_rank": 89,
      "last_updated": "2020-05-17T09:40:01.000Z",
      "quote": {
        "USD": {
          "price": 0.0019018769661,
          "volume_24h": 439439.880342708,
          "percent_change_1h": -1.1708,
          "percent_change_24h": -0.607776,
          "percent_change_7d": 37.9163,
          "market_cap": 54790628.00821035,
          "last_updated": "2020-05-17T09:40:01.000Z"
        }
      }
    },
    {
      "id": 4172,
      "name": "Terra",
      "symbol": "LUNA",
      "slug": "terra-luna",
      "num_market_pairs": 13,
      "date_added": "2019-07-26T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 287765804.430561,
      "total_supply": 995859074.224591,
      "platform": null,
      "cmc_rank": 90,
      "last_updated": "2020-05-17T09:40:11.000Z",
      "quote": {
        "USD": {
          "price": 0.189717456764,
          "volume_24h": 2231305.55918328,
          "percent_change_1h": 0.553852,
          "percent_change_24h": 2.19586,
          "percent_change_7d": 6.65197,
          "market_cap": 54594196.56021264,
          "last_updated": "2020-05-17T09:40:11.000Z"
        }
      }
    },
    {
      "id": 4847,
      "name": "Blockstack",
      "symbol": "STX",
      "slug": "blockstack",
      "num_market_pairs": 6,
      "date_added": "2019-10-28T00:00:00.000Z",
      "tags": [],
      "max_supply": 2048913388,
      "circulating_supply": 438456264.004765,
      "total_supply": 672379630.004765,
      "platform": null,
      "cmc_rank": 91,
      "last_updated": "2020-05-17T09:40:14.000Z",
      "quote": {
        "USD": {
          "price": 0.120473212288,
          "volume_24h": 997021.471631963,
          "percent_change_1h": 0.0361478,
          "percent_change_24h": 10.7073,
          "percent_change_7d": 26.4757,
          "market_cap": 52822234.57244942,
          "last_updated": "2020-05-17T09:40:14.000Z"
        }
      }
    },
    {
      "id": 463,
      "name": "BitShares",
      "symbol": "BTS",
      "slug": "bitshares",
      "num_market_pairs": 57,
      "date_added": "2014-07-21T00:00:00.000Z",
      "tags": [],
      "max_supply": 3600570502,
      "circulating_supply": 2748090000,
      "total_supply": 2748090000,
      "platform": null,
      "cmc_rank": 92,
      "last_updated": "2020-05-17T09:40:02.000Z",
      "quote": {
        "USD": {
          "price": 0.0187649705428,
          "volume_24h": 3254053.10358099,
          "percent_change_1h": 0.203795,
          "percent_change_24h": 1.05664,
          "percent_change_7d": 2.0521,
          "market_cap": 51567827.89896325,
          "last_updated": "2020-05-17T09:40:02.000Z"
        }
      }
    },
    {
      "id": 2143,
      "name": "Streamr",
      "symbol": "DATA",
      "slug": "streamr",
      "num_market_pairs": 24,
      "date_added": "2017-11-03T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 667327371.762927,
      "total_supply": 987154514,
      "platform": {
        "id": 1027,
        "name": "Ethereum",
        "symbol": "ETH",
        "slug": "ethereum",
        "token_address": "0x0cf0ee63788a0849fe5297f3407f701e122cc023"
      },
      "cmc_rank": 93,
      "last_updated": "2020-05-17T09:40:04.000Z",
      "quote": {
        "USD": {
          "price": 0.0745902264525,
          "volume_24h": 892572.643883557,
          "percent_change_1h": 0.223761,
          "percent_change_24h": 0.288053,
          "percent_change_7d": 4.46169,
          "market_cap": 49776099.77774838,
          "last_updated": "2020-05-17T09:40:04.000Z"
        }
      }
    },
    {
      "id": 1966,
      "name": "Decentraland",
      "symbol": "MANA",
      "slug": "decentraland",
      "num_market_pairs": 78,
      "date_added": "2017-09-17T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 1370162955.67155,
      "total_supply": 2197907565.03415,
      "platform": {
        "id": 1027,
        "name": "Ethereum",
        "symbol": "ETH",
        "slug": "ethereum",
        "token_address": "0x0f5d2fb29fb7d3cfee444a200298f468908cc942"
      },
      "cmc_rank": 94,
      "last_updated": "2020-05-17T09:40:03.000Z",
      "quote": {
        "USD": {
          "price": 0.0362322469044,
          "volume_24h": 22387740.0567871,
          "percent_change_1h": 0.220669,
          "percent_change_24h": 0.0130347,
          "percent_change_7d": 7.18137,
          "market_cap": 49644082.509154074,
          "last_updated": "2020-05-17T09:40:03.000Z"
        }
      }
    },
    {
      "id": 1698,
      "name": "Horizen",
      "symbol": "ZEN",
      "slug": "horizen",
      "num_market_pairs": 39,
      "date_added": "2017-06-01T00:00:00.000Z",
      "tags": ["mineable"],
      "max_supply": 21000000,
      "circulating_supply": 9083200,
      "total_supply": 9083200,
      "platform": null,
      "cmc_rank": 95,
      "last_updated": "2020-05-17T09:40:02.000Z",
      "quote": {
        "USD": {
          "price": 5.46661536364,
          "volume_24h": 3861702.14072119,
          "percent_change_1h": -0.18464,
          "percent_change_24h": 3.95458,
          "percent_change_7d": 7.37425,
          "market_cap": 49654360.671014845,
          "last_updated": "2020-05-17T09:40:02.000Z"
        }
      }
    },
    {
      "id": 2447,
      "name": "Crypterium",
      "symbol": "CRPT",
      "slug": "crpt",
      "num_market_pairs": 9,
      "date_added": "2018-01-22T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 99569555.3718727,
      "total_supply": 99569555.3718727,
      "platform": {
        "id": 1027,
        "name": "Ethereum",
        "symbol": "ETH",
        "slug": "ethereum",
        "token_address": "0x80a7e048f37a50500351c204cb407766fa3bae7f"
      },
      "cmc_rank": 96,
      "last_updated": "2020-05-17T09:40:05.000Z",
      "quote": {
        "USD": {
          "price": 0.477628698274,
          "volume_24h": 332508.961895168,
          "percent_change_1h": 0.346196,
          "percent_change_24h": -5.26989,
          "percent_change_7d": 5.29191,
          "market_cap": 47557277.119988516,
          "last_updated": "2020-05-17T09:40:05.000Z"
        }
      }
    },
    {
      "id": 3704,
      "name": "v.systems",
      "symbol": "VSYS",
      "slug": "v-systems",
      "num_market_pairs": 37,
      "date_added": "2019-03-05T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 1994826942,
      "total_supply": 3909685406,
      "platform": null,
      "cmc_rank": 97,
      "last_updated": "2020-05-17T09:40:10.000Z",
      "quote": {
        "USD": {
          "price": 0.0237347660687,
          "volume_24h": 2310455.85016778,
          "percent_change_1h": -0.451008,
          "percent_change_24h": 1.07236,
          "percent_change_7d": 1.65185,
          "market_cap": 47346750.81591018,
          "last_updated": "2020-05-17T09:40:10.000Z"
        }
      }
    },
    {
      "id": 2096,
      "name": "Ripio Credit Network",
      "symbol": "RCN",
      "slug": "ripio-credit-network",
      "num_market_pairs": 21,
      "date_added": "2017-10-26T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 507847856.76109,
      "total_supply": 999942647.35309,
      "platform": {
        "id": 1027,
        "name": "Ethereum",
        "symbol": "ETH",
        "slug": "ethereum",
        "token_address": "0xf970b8e36e23f7fc3fd752eea86f8be8d83375a6"
      },
      "cmc_rank": 98,
      "last_updated": "2020-05-17T09:40:04.000Z",
      "quote": {
        "USD": {
          "price": 0.0917520772137,
          "volume_24h": 513026.57594493,
          "percent_change_1h": 0.219413,
          "percent_change_24h": -1.12156,
          "percent_change_7d": 15.5586,
          "market_cap": 46596095.76635559,
          "last_updated": "2020-05-17T09:40:04.000Z"
        }
      }
    },
    {
      "id": 1455,
      "name": "Golem",
      "symbol": "GNT",
      "slug": "golem-network-tokens",
      "num_market_pairs": 89,
      "date_added": "2016-11-18T00:00:00.000Z",
      "tags": [],
      "max_supply": null,
      "circulating_supply": 980050000,
      "total_supply": 1000000000,
      "platform": {
        "id": 1027,
        "name": "Ethereum",
        "symbol": "ETH",
        "slug": "ethereum",
        "token_address": "0xa74476443119A942dE498590Fe1f2454d7D4aC0d"
      },
      "cmc_rank": 99,
      "last_updated": "2020-05-17T09:40:03.000Z",
      "quote": {
        "USD": {
          "price": 0.047291618462,
          "volume_24h": 8636968.58612359,
          "percent_change_1h": 1.14815,
          "percent_change_24h": 6.71781,
          "percent_change_7d": 14.5102,
          "market_cap": 46348150.6736831,
          "last_updated": "2020-05-17T09:40:03.000Z"
        }
      }
    },
    {
      "id": 1903,
      "name": "HyperCash",
      "symbol": "HC",
      "slug": "hypercash",
      "num_market_pairs": 32,
      "date_added": "2017-08-20T00:00:00.000Z",
      "tags": ["mineable"],
      "max_supply": 84000000,
      "circulating_supply": 44614843.777052,
      "total_supply": 44614843.777052,
      "platform": null,
      "cmc_rank": 100,
      "last_updated": "2020-05-17T09:40:03.000Z",
      "quote": {
        "USD": {
          "price": 1.03448500057,
          "volume_24h": 9556777.53033955,
          "percent_change_1h": -0.0173025,
          "percent_change_24h": 1.46374,
          "percent_change_7d": 2.40056,
          "market_cap": 46153386.69013409,
          "last_updated": "2020-05-17T09:40:03.000Z"
        }
      }
    }
  ]
};
