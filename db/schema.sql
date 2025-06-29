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

create table if not exists portfolio_positions(
    id serial primary key,
    symbol varchar(10) not null,
    buy_date date not null,
    quantity integer not null,
    buy_price numeric not null,
    current_price numeric,
    sector varchar(50),
    notes text
);

