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

create table if not exists fundamentals(
    id serial primary key,
    symbol varchar(10) not null,
    pe numeric,
    roe numeric,
    eps_growth numeric,
    de_ratio numeric,
    profit_growth numeric,
    last_updated timestamp default now(),
    unique(symbol)
);