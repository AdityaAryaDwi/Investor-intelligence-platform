create table if not exists stock_prices(
    id serial primary key,
    symbol varchar(10) not null,
    trading_day date not null,
    open_price numeric,
    high numeric,
    low numeric,
    closing_price numeric,
    volume bigint,
    unique (symbol,trading_day)
);