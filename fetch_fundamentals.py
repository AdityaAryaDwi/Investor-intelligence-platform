import requests
from bs4 import BeautifulSoup
import psycopg2
from psycopg2.extras import execute_values
from datetime import datetime
import sys
from pathlib import Path
sys.path.append(str(Path(__file__).resolve().parent.parent))
from db.db_connect import get_connection
import logging

logging.basicConfig(
    level=logging.INFO,
    fomrat="%(asctime)s [%(levelname)s]: %(message)s"
)

symbols=['TCS', 'INFY', 'RELIANCE', 'ITC', 'HDFCBANK', 'SBIN', 'M&M', 'ASIANPAINT', 'DMART', 'TITAN']

def parse_metric(soup,label):


def fetch_fundamentals(symbol):
    url=f"https://www.screener.in/company/{symbol}/consolidated/"
    try:
        response=requests.get(url,timeout=10)
        response.raise_for_status()
        soup=BeautifulSoup(response.text,"html.parser")

        pe=parse_metric(soup,"P/E")
        roe=parse_metric(soup,"ROE")
        eps_growth=parse_metric(soup,"EPS growth")
        de_ratio=parse_metric(soup,"Debt to Equity")
        profit_margin=parse_metric(soup,"Profit Margin")

        return {
            "symbol"=symbol,
            "pe"=pe,
            "roe"=roe,
            "eps_growth"=eps_growth,
            "de_ratio"=de_ratio,
            "profit_margin"=profit_margin,
            "last_updated"=datetime.now()
        }
    except Exception as e:
        logging.error(f"Failed to fetch the data for {symbol}: {e}")
        return None
    
