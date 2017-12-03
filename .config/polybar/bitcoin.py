#!/usr/bin/env python3

import requests

r = requests.get('https://bitmarket24.pl/api/BTC_PLN/status.json');
ticker = r.json()

print('%.2f PLN' % float(ticker['last']))
